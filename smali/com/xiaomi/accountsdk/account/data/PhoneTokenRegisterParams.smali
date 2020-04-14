.class public Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Z

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/i;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/i;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->a(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->b(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->c(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->c:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->c:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->c:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->b:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->c:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->c:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iget-object v1, v0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->c:Ljava/lang/String;

    :cond_0
    iput-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->d(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->e(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->g:Z

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->f(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->g(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->i:Ljava/lang/String;

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;-><init>(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "phone"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ticket_token"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "activator_phone_info"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->c:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "password"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "region"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "is_no_password"

    iget-boolean v2, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->g:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "password"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "region"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "service_id"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
