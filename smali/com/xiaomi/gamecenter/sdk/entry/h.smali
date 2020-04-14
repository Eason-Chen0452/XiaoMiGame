.class final Lcom/xiaomi/gamecenter/sdk/entry/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;
    .locals 3

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;-><init>(Lcom/xiaomi/gamecenter/sdk/entry/h;)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->access$102(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;I)I

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->access$202(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;->valueOf(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->access$302(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->access$402(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;->valueOf(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->access$502(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;)Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->access$602(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Z)Z

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/entry/PayMode;->valueOf(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/PayMode;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->access$702(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Lcom/xiaomi/gamecenter/sdk/entry/PayMode;)Lcom/xiaomi/gamecenter/sdk/entry/PayMode;

    const-class v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->access$802(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->access$902(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->access$1002(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->access$1102(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;I)I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->access$1202(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;I)I

    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "com.xiaomi.gamecenter.sdk.IServiceCallback"

    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/IServiceCallback;

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->access$1302(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Lcom/xiaomi/gamecenter/sdk/IServiceCallback;)Lcom/xiaomi/gamecenter/sdk/IServiceCallback;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->access$1402(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;I)I

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->access$1502(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;->valueOf(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->access$1602(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;)Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->access$1702(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Z)Z

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiGravity;->valueOf(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/MiGravity;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->access$1802(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Lcom/xiaomi/gamecenter/sdk/entry/MiGravity;)Lcom/xiaomi/gamecenter/sdk/entry/MiGravity;

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/entry/h;->a(Landroid/os/Parcel;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    return-object v0
.end method
