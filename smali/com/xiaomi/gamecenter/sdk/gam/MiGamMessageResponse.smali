.class public Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private heartToken:Ljava/lang/String;

.field private index:I

.field private miliaoInfo:Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

.field private msgResult:Ljava/lang/String;

.field private sdkStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/gam/b;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/gam/b;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->index:I

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->heartToken:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->index:I

    return p1
.end method

.method static synthetic access$102(Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->sdkStatus:I

    return p1
.end method

.method static synthetic access$202(Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->msgResult:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->heartToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;)Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->miliaoInfo:Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHeartToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->heartToken:Ljava/lang/String;

    return-object v0
.end method

.method public getMiliaoInfo()Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->miliaoInfo:Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

    return-object v0
.end method

.method public getMsgResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->msgResult:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkStatus()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->sdkStatus:I

    return v0
.end method

.method public setMsgResult(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->msgResult:Ljava/lang/String;

    return-void
.end method

.method public setSdkStatus(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->sdkStatus:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->index:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->sdkStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->msgResult:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->heartToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->miliaoInfo:Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
