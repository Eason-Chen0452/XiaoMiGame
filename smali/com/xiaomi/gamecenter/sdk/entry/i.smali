.class final Lcom/xiaomi/gamecenter/sdk/entry/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;",
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

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-direct {v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->access$002(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->access$102(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;->valueOf(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->access$202(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->access$302(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;->valueOf(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->access$402(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;)Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->access$502(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/entry/PayMode;->valueOf(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/PayMode;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->access$602(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Lcom/xiaomi/gamecenter/sdk/entry/PayMode;)Lcom/xiaomi/gamecenter/sdk/entry/PayMode;

    const-class v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->access$702(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->access$802(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->access$902(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;->valueOf(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->access$1002(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;)Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->access$1102(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiGravity;->valueOf(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/MiGravity;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->access$1202(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Lcom/xiaomi/gamecenter/sdk/entry/MiGravity;)Lcom/xiaomi/gamecenter/sdk/entry/MiGravity;

    return-object v1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    return-object v0
.end method
