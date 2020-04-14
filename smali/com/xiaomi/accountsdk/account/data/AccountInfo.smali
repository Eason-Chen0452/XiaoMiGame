.class public Lcom/xiaomi/accountsdk/account/data/AccountInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/a;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/a;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->h:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->j:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->k:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "has_pwd"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->m:Z

    if-eqz v1, :cond_1

    const-string v0, "user_synced_url"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->l:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->a(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->b(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->c(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->d(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->e(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->f(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->g(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->h(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->i(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->j(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->j:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->k(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->k:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->l(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->m:Z

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->m(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->g(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->h(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;-><init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->e(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->f(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p7}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->g(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;-><init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->e(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->f(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p7}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->g(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p8}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->h(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;-><init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AccountInfo{userId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", security=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "has_pwd"

    iget-boolean v2, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->m:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "user_synced_url"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
