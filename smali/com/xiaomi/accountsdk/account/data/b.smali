.class final Lcom/xiaomi/accountsdk/account/data/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;",
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
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;-><init>()V

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;

    move-result-object v1

    const-string v2, "phone_hash"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;

    move-result-object v1

    const-string v2, "activator_token"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;

    move-result-object v1

    const-string v2, "slot_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->a(I)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;

    move-result-object v1

    const-string v2, "copy_writer"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;

    move-result-object v1

    const-string v2, "operator_link"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->e(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;

    move-result-object v1

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;-><init>(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;)V

    goto :goto_0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    return-object v0
.end method
