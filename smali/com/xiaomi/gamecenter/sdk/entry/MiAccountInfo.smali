.class public Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private nikename:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field private uid:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/g;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/entry/g;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;->uid:J

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;->sessionId:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;->nikename:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;J)J
    .locals 1

    iput-wide p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;->uid:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;->sessionId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;->nikename:Ljava/lang/String;

    return-object p1
.end method

.method public static getCreator()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNikename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;->nikename:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;->uid:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;->uid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;->sessionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;->nikename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
