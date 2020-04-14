.class final Lcom/xiaomi/gamecenter/sdk/entry/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;",
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

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;

    invoke-direct {v1}, Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;->access$002(Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;->access$102(Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;->access$202(Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;->access$302(Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;Ljava/lang/String;)Ljava/lang/String;

    const-class v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;->access$402(Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    return-object v1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;

    return-object v0
.end method
