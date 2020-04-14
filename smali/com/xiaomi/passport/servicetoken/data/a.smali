.class final Lcom/xiaomi/passport/servicetoken/data/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;",
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
    .locals 1

    new-instance v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;

    invoke-direct {v0, p1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;

    return-object v0
.end method
