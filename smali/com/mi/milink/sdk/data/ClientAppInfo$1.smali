.class final Lcom/mi/milink/sdk/data/ClientAppInfo$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/mi/milink/sdk/data/ClientAppInfo;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/mi/milink/sdk/data/ClientAppInfo;
    .locals 2

    new-instance v0, Lcom/mi/milink/sdk/data/ClientAppInfo;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/mi/milink/sdk/data/ClientAppInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/mi/milink/sdk/data/ClientAppInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/milink/sdk/data/ClientAppInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/mi/milink/sdk/data/ClientAppInfo;
    .locals 1

    new-array v0, p1, [Lcom/mi/milink/sdk/data/ClientAppInfo;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/milink/sdk/data/ClientAppInfo$1;->newArray(I)[Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    return-object v0
.end method
