.class final Lcom/xiaomi/gamecenter/sdk/protocol/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;",
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
    .locals 4

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->a(Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->a(Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;J)J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->a(Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->b(Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->b(Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;J)J

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;

    return-object v0
.end method
