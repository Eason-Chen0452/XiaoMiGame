.class public Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;,
        Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Z

.field public final i:J

.field public final j:Z

.field public final k:Z

.field public final l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/j;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/j;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->getInstance(I)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->a:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->g:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->h:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->i:J

    iput-boolean v2, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->j:Z

    iput-boolean v2, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->k:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->l:Z

    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->a(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->getInstance(I)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->a:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->b(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->c(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->d(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->e(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->f(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->g(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->h(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->h:Z

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->i(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->i:J

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->j(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->j:Z

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->k(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->k:Z

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->l(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->l:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;-><init>(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "register_status"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->a:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    iget v2, v2, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->value:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "user_id"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "user_name"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "avatar_address"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ticket_token"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "phone"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "masked_user_id"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "has_pwd"

    iget-boolean v2, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->h:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "bind_time"

    iget-wide v2, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->i:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "need_toast"

    iget-boolean v2, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->k:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "need_get_active_time"

    iget-boolean v2, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->j:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "register_pwd"

    iget-boolean v2, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->l:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
