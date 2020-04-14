.class final Lcom/xiaomi/gamecenter/sdk/entry/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;",
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
    .locals 4

    const/4 v0, 0x1

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;

    invoke-direct {v1}, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;->setActivity(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;->setBundle(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;->values()[Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;->setType(Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;->setIsMainAcitivity(Z)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;

    return-object v0
.end method
