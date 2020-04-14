.class final Lcom/xiaomi/accountsdk/account/data/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;",
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    const-string v2, "register_status"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;-><init>(I)V

    const-string v2, "user_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v1

    const-string v2, "user_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v1

    const-string v2, "avatar_address"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v1

    const-string v2, "ticket_token"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->e(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v1

    const-string v2, "masked_user_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->f(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v1

    const-string v2, "has_pwd"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->a(Z)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v1

    const-string v2, "bind_time"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->a(J)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v1

    const-string v2, "need_toast"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->c(Z)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v1

    const-string v2, "need_get_active_time"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->b(Z)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v1

    const-string v2, "register_pwd"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->d(Z)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v1

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;-><init>(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;B)V

    goto :goto_0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    return-object v0
.end method
