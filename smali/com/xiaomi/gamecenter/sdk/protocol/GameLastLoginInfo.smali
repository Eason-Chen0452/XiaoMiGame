.class public Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/protocol/a;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/protocol/a;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp;->getRetCode()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->a:I

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp;->getAppAccountId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->b:J

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp;->getNickName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp;->getSession()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->a:I

    return p1
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;J)J
    .locals 1

    iput-wide p1, p0, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->b:J

    return-wide p1
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;J)J
    .locals 1

    iput-wide p1, p0, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->e:J

    return-wide p1
.end method

.method static synthetic b(Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->d:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->a:I

    return v0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->b:J

    return-wide v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->e:J

    return-wide v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GameLastLoginInfo{errcode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastPlayedId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastPlayedName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", session=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastLoginTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
