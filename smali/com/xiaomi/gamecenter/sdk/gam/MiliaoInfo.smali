.class public Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appid:Ljava/lang/String;

.field private appname:Ljava/lang/String;

.field private gameid:Ljava/lang/String;

.field private mlaltmsg:Ljava/lang/String;

.field private mlcontent:Ljava/lang/String;

.field private mlownerid:Ljava/lang/String;

.field private mlownername:Ljava/lang/String;

.field private mlsourcename:Ljava/lang/String;

.field private mlsourceurl:Ljava/lang/String;

.field private mltitle:Ljava/lang/String;

.field private rootMiliaoInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/gam/d;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/gam/d;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->appid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1002(Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->rootMiliaoInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->gameid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->appname:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->mlownerid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->mlownername:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->mltitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->mlcontent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->mlsourcename:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->mlsourceurl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->mlaltmsg:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public getAppname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->appname:Ljava/lang/String;

    return-object v0
.end method

.method public getGameid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->gameid:Ljava/lang/String;

    return-object v0
.end method

.method public getMlaltmsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->mlaltmsg:Ljava/lang/String;

    return-object v0
.end method

.method public getMlcontent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->mlcontent:Ljava/lang/String;

    return-object v0
.end method

.method public getMlownerid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->mlownerid:Ljava/lang/String;

    return-object v0
.end method

.method public getMlownername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->mlownername:Ljava/lang/String;

    return-object v0
.end method

.method public getMlsourcename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->mlsourcename:Ljava/lang/String;

    return-object v0
.end method

.method public getMlsourceurl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->mlsourceurl:Ljava/lang/String;

    return-object v0
.end method

.method public getMltitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->mltitle:Ljava/lang/String;

    return-object v0
.end method

.method public getRootMiliaoInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->rootMiliaoInfo:Ljava/lang/String;

    return-object v0
.end method

.method public setAppid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->appid:Ljava/lang/String;

    return-void
.end method

.method public setAppname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->appname:Ljava/lang/String;

    return-void
.end method

.method public setGameid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->gameid:Ljava/lang/String;

    return-void
.end method

.method public setMlaltmsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->mlaltmsg:Ljava/lang/String;

    return-void
.end method

.method public setMlcontent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->mlcontent:Ljava/lang/String;

    return-void
.end method

.method public setMlownerid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->mlownerid:Ljava/lang/String;

    return-void
.end method

.method public setMlownername(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->mlownername:Ljava/lang/String;

    return-void
.end method

.method public setMlsourcename(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->mlsourcename:Ljava/lang/String;

    return-void
.end method

.method public setMlsourceurl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->mlsourceurl:Ljava/lang/String;

    return-void
.end method

.method public setMltitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->mltitle:Ljava/lang/String;

    return-void
.end method

.method public setRootMiliaoInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->rootMiliaoInfo:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->appid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->gameid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->appname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->mlownerid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->mlownername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->mltitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->mlcontent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->mlsourcename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->mlsourceurl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->mlaltmsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->rootMiliaoInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
