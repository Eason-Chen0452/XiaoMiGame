.class final Lcom/xiaomi/accountsdk/account/data/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;",
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

    const-string v0, "password"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "ticket_token"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "activator_phone_info"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    const-string v5, "region"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "service_id"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;

    invoke-direct {v6}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;-><init>()V

    invoke-virtual {v6, v2, v4}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->a(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->a()Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;

    move-result-object v0

    goto :goto_0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;

    return-object v0
.end method
