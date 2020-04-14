.class final Lcom/xiaomi/gamecenter/sdk/milink/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;",
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

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;-><init>(B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->a(Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->a(Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->b(Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->c(Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->d(Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->e(Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->a(Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->valueOf(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->a(Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;

    return-object v0
.end method
