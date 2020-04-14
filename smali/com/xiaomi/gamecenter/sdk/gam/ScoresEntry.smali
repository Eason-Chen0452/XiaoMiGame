.class public Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private scoreKey:Ljava/lang/String;

.field private scoreValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/gam/e;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/gam/e;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;->scoreKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;->scoreValue:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScoreKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;->scoreKey:Ljava/lang/String;

    return-object v0
.end method

.method public getScoreValue()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;->scoreValue:I

    return v0
.end method

.method public setScoreKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;->scoreKey:Ljava/lang/String;

    return-void
.end method

.method public setScoreValue(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;->scoreValue:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;->scoreKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;->scoreValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
