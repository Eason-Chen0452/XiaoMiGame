.class final Lcom/xiaomi/accountsdk/account/data/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;",
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
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "phone"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "ticket_token"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "activator_phone_info"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    const-string v4, "ticket"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;

    invoke-direct {v5}, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;-><init>()V

    invoke-virtual {v5, v2, v3}, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->a(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->a(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;

    move-result-object v0

    const-string v2, "device_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;

    move-result-object v0

    const-string v2, "service_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;

    move-result-object v0

    const-string v2, "hash_env"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->a([Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;

    move-result-object v0

    const-string v2, "return_sts_url"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->a(Z)Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;

    move-result-object v1

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;-><init>(Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;B)V

    goto :goto_0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;

    return-object v0
.end method
