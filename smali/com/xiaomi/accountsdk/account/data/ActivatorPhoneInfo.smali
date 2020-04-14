.class public Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/b;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/b;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->a(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->b(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->c(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->d(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->d:I

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->e(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->f(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->f:Ljava/lang/String;

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

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "phone_hash"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "activator_token"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "slot_id"

    iget v2, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "copy_writer"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "operator_link"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
