.class public Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

.field private appVersionCode:I

.field private appVersionName:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private sdkVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/m;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/entry/m;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;->sdkVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;->packageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;->appVersionCode:I

    return p1
.end method

.method static synthetic access$302(Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;->appVersionName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppInfo()Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    return-object v0
.end method

.method public getAppVersionCode()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;->appVersionCode:I

    return v0
.end method

.method public getAppVersionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;->appVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setAppInfo(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    return-void
.end method

.method public setAppVersionCode(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;->appVersionCode:I

    return-void
.end method

.method public setAppVersionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;->appVersionName:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;->sdkVersion:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;->sdkVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;->appVersionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;->appVersionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
