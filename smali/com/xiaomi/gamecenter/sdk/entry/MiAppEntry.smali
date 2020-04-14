.class public Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private SDK_INDEX:I

.field private account:Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

.field private appId:I

.field private appKey:Ljava/lang/String;

.field private appType:Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;

.field private callback:Lcom/xiaomi/gamecenter/sdk/IServiceCallback;

.field private cpMark:Ljava/lang/String;

.field private ctx:Landroid/content/Context;

.field private debugMode:Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;

.field private isSocialGame:Z

.field private miGravity:Lcom/xiaomi/gamecenter/sdk/entry/MiGravity;

.field private newAppId:Ljava/lang/String;

.field private orientation:Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;

.field private payMode:Lcom/xiaomi/gamecenter/sdk/entry/PayMode;

.field private pid:I

.field private pkgLabel:Ljava/lang/String;

.field private pkgName:Ljava/lang/String;

.field private uid:I

.field private weakAccount:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/h;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/entry/h;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "XXX"

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->cpMark:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/PayMode;->custom:Lcom/xiaomi/gamecenter/sdk/entry/PayMode;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->payMode:Lcom/xiaomi/gamecenter/sdk/entry/PayMode;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/PluginVersionCode;->b()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->SDK_INDEX:I

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;->ONLINE:Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->debugMode:Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;

    iput-boolean v1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->isSocialGame:Z

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/MiGravity;->MI_TOP_RIGHT:Lcom/xiaomi/gamecenter/sdk/entry/MiGravity;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->miGravity:Lcom/xiaomi/gamecenter/sdk/entry/MiGravity;

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;->vertical:Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->orientation:Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;

    iput-boolean v1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->weakAccount:Z

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "XXX"

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->cpMark:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/PayMode;->custom:Lcom/xiaomi/gamecenter/sdk/entry/PayMode;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->payMode:Lcom/xiaomi/gamecenter/sdk/entry/PayMode;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/PluginVersionCode;->b()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->SDK_INDEX:I

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;->ONLINE:Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->debugMode:Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->isSocialGame:Z

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/MiGravity;->MI_TOP_RIGHT:Lcom/xiaomi/gamecenter/sdk/entry/MiGravity;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->miGravity:Lcom/xiaomi/gamecenter/sdk/entry/MiGravity;

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->appKey:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppType()Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->appType:Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getCpMark()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->cpMark:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getOrientation()Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->orientation:Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAccount()Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->account:Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->newAppId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getDebugMode()Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->debugMode:Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->isSocialGame()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->isSocialGame:Z

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getCtx()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getCtx()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->pkgName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/gamecenter/sdk/entry/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->pkgLabel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->appId:I

    return p1
.end method

.method static synthetic access$1102(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->pid:I

    return p1
.end method

.method static synthetic access$1202(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->uid:I

    return p1
.end method

.method static synthetic access$1302(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Lcom/xiaomi/gamecenter/sdk/IServiceCallback;)Lcom/xiaomi/gamecenter/sdk/IServiceCallback;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->callback:Lcom/xiaomi/gamecenter/sdk/IServiceCallback;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->SDK_INDEX:I

    return p1
.end method

.method static synthetic access$1502(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->newAppId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;)Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->debugMode:Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->isSocialGame:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Lcom/xiaomi/gamecenter/sdk/entry/MiGravity;)Lcom/xiaomi/gamecenter/sdk/entry/MiGravity;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->miGravity:Lcom/xiaomi/gamecenter/sdk/entry/MiGravity;

    return-object p1
.end method

.method static synthetic access$202(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->appKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->appType:Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;

    return-object p1
.end method

.method static synthetic access$402(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->cpMark:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;)Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->orientation:Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;

    return-object p1
.end method

.method static synthetic access$602(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->weakAccount:Z

    return p1
.end method

.method static synthetic access$702(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Lcom/xiaomi/gamecenter/sdk/entry/PayMode;)Lcom/xiaomi/gamecenter/sdk/entry/PayMode;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->payMode:Lcom/xiaomi/gamecenter/sdk/entry/PayMode;

    return-object p1
.end method

.method static synthetic access$802(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->account:Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    return-object p1
.end method

.method static synthetic access$902(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->pkgName:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->appId:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->SDK_INDEX:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->newAppId:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->appId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->newAppId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppType()Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->appType:Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;

    return-object v0
.end method

.method public getNewAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->newAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->pkgLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->appId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->appKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->appType:Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->cpMark:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->orientation:Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->weakAccount:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->payMode:Lcom/xiaomi/gamecenter/sdk/entry/PayMode;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/PayMode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->account:Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->pkgLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->callback:Lcom/xiaomi/gamecenter/sdk/IServiceCallback;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->SDK_INDEX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->newAppId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->debugMode:Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->isSocialGame:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->miGravity:Lcom/xiaomi/gamecenter/sdk/entry/MiGravity;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiGravity;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
