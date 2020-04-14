.class public Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;,
        Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Landroid/content/Intent;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Z

.field public final l:Ljava/lang/String;

.field private final m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/passport/servicetoken/a;

    invoke-direct {v0}, Lcom/xiaomi/passport/servicetoken/a;-><init>()V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "V2#"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v3, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->d:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->f:Ljava/lang/String;

    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->g:Landroid/content/Intent;

    iput-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->j:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->k:Z

    iput-boolean v4, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->m:Z

    iput-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->l:Ljava/lang/String;

    :goto_1
    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->values()[Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    move-result-object v2

    aget-object v0, v2, v0

    goto :goto_0

    :cond_1
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v2

    const-string v0, "sid"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->a:Ljava/lang/String;

    const-string v0, "serviceToken"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->b:Ljava/lang/String;

    const-string v0, "security"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->c:Ljava/lang/String;

    const-string v0, "errorCode"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_2

    :goto_2
    iput-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->d:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    const-string v0, "errorMessage"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->e:Ljava/lang/String;

    const-string v0, "stackTrace"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->f:Ljava/lang/String;

    const-string v0, "intent"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->g:Landroid/content/Intent;

    const-string v0, "slh"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->h:Ljava/lang/String;

    const-string v0, "ph"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->i:Ljava/lang/String;

    const-string v0, "cUserId"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->j:Ljava/lang/String;

    const-string v0, "peeked"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->k:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->m:Z

    const-string v0, "userId"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->l:Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->values()[Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    move-result-object v1

    aget-object v1, v1, v0

    goto :goto_2
.end method

.method private constructor <init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->a(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->b(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->c(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->d(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->e(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->d:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->f(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->g:Landroid/content/Intent;

    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->g(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->h(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->i(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->j(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->j:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->k(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->k:Z

    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->l(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->m:Z

    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->m(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->l:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;-><init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->l:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->k:Z

    iget-boolean v3, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->k:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-boolean v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->m:Z

    iget-boolean v3, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->m:Z

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->a:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->a:Ljava/lang/String;

    if-nez v2, :cond_6

    :cond_8
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->b:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_9
    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->b:Ljava/lang/String;

    if-nez v2, :cond_9

    :cond_b
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->c:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_c
    move v0, v1

    goto :goto_0

    :cond_d
    iget-object v2, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->c:Ljava/lang/String;

    if-nez v2, :cond_c

    :cond_e
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->d:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->d:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    if-eq v2, v3, :cond_f

    move v0, v1

    goto :goto_0

    :cond_f
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->e:Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_10
    move v0, v1

    goto :goto_0

    :cond_11
    iget-object v2, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->e:Ljava/lang/String;

    if-nez v2, :cond_10

    :cond_12
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->f:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    :cond_13
    move v0, v1

    goto/16 :goto_0

    :cond_14
    iget-object v2, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->f:Ljava/lang/String;

    if-nez v2, :cond_13

    :cond_15
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->g:Landroid/content/Intent;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->g:Landroid/content/Intent;

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->g:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    :cond_16
    move v0, v1

    goto/16 :goto_0

    :cond_17
    iget-object v2, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->g:Landroid/content/Intent;

    if-nez v2, :cond_16

    :cond_18
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->h:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_19
    move v0, v1

    goto/16 :goto_0

    :cond_1a
    iget-object v2, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->h:Ljava/lang/String;

    if-nez v2, :cond_19

    :cond_1b
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->i:Ljava/lang/String;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    :cond_1c
    move v0, v1

    goto/16 :goto_0

    :cond_1d
    iget-object v2, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->i:Ljava/lang/String;

    if-nez v2, :cond_1c

    :cond_1e
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->j:Ljava/lang/String;

    if-eqz v2, :cond_1f

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->j:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0

    :cond_1f
    iget-object v2, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->j:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->d:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->d:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->e:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->f:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->g:Landroid/content/Intent;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->g:Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->h:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->i:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->j:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->k:Z

    if-eqz v0, :cond_b

    move v0, v2

    :goto_a
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->m:Z

    if-eqz v3, :cond_c

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->l:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->l:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto/16 :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_5

    :cond_7
    move v0, v1

    goto :goto_6

    :cond_8
    move v0, v1

    goto :goto_7

    :cond_9
    move v0, v1

    goto :goto_8

    :cond_a
    move v0, v1

    goto :goto_9

    :cond_b
    move v0, v1

    goto :goto_a

    :cond_c
    move v2, v1

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/16 v6, 0x27

    const-string v1, "serviceTokenMasked"

    const-string v2, "securityMasked"

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x3

    if-gt v0, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->j:Ljava/lang/String;

    :goto_0
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "ServiceTokenResult{"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v4, "userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, ", sid=\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v4, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, ", serviceToken=\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, ", security=\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, ", errorCode="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->d:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v0, ", errorMessage=\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, ", errorStackTrace=\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, ", intent="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->g:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v0, ", slh=\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, ", ph=\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, ", cUserId=\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, ", peeked="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, ", useV1Parcel="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->l:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "****"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v0, -0x1

    iget-boolean v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->m:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->d:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->g:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->d:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "sid"

    iget-object v3, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "serviceToken"

    iget-object v3, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "security"

    iget-object v3, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "errorCode"

    iget-object v3, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->d:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "errorMessage"

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "stackTrace"

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "intent"

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->g:Landroid/content/Intent;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "slh"

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ph"

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cUserId"

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "peeked"

    iget-boolean v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->k:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "userId"

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->l:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "V2#"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->d:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ordinal()I

    move-result v0

    goto :goto_2
.end method
