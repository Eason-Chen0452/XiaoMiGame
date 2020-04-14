.class public Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private account:Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

.field private errcode:I

.field private headUrl:Ljava/lang/String;

.field private needWriteExtent:Z

.field private session:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/f;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/entry/f;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->needWriteExtent:Z

    return-void
.end method

.method public constructor <init>(ILcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->needWriteExtent:Z

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->errcode:I

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->account:Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    return-void
.end method

.method static synthetic access$002(Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->errcode:I

    return p1
.end method

.method static synthetic access$102(Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->account:Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    return-object p1
.end method

.method static synthetic access$202(Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->headUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->userName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->session:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccount()Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->account:Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    return-object v0
.end method

.method public getErrcode()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->errcode:I

    return v0
.end method

.method public getHeadUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->headUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSession()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->session:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public isNeedWriteExtent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->needWriteExtent:Z

    return v0
.end method

.method public setAccount(Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->account:Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    return-void
.end method

.method public setErrcode(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->errcode:I

    return-void
.end method

.method public setHeadUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->headUrl:Ljava/lang/String;

    return-void
.end method

.method public setNeedWriteExtent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->needWriteExtent:Z

    return-void
.end method

.method public setSession(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->session:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->userName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LoginResult{errcode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->errcode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->account:Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needWriteExtent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->needWriteExtent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", headUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->headUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", session=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->session:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->errcode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->account:Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->needWriteExtent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->headUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->userName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->session:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
