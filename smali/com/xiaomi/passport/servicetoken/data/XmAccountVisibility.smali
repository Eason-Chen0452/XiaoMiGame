.class public Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;,
        Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Landroid/accounts/Account;

.field public final e:I

.field public final f:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/passport/servicetoken/data/a;

    invoke-direct {v0}, Lcom/xiaomi/passport/servicetoken/data/a;-><init>()V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->values()[Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    move-result-object v0

    const-string v2, "error_code"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->a:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    const-string v0, "error_msg"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->b:Ljava/lang/String;

    const-string v0, "visible"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->c:Z

    const-string v0, "account"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->d:Landroid/accounts/Account;

    const-string v0, "build_sdk_version"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->e:I

    const-string v0, "new_choose_account_intent"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->f:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->a(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;)Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->a:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->b(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->c(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->c:Z

    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->d(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->d:Landroid/accounts/Account;

    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->e(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->e:I

    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->f(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->f:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x27

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "AccountVisibility{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->a:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", errorMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, ", accountVisible=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "error_code"

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->a:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    invoke-virtual {v2}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "error_msg"

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "visible"

    iget-boolean v2, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->c:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "account"

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->d:Landroid/accounts/Account;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "build_sdk_version"

    iget v2, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "new_choose_account_intent"

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->f:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
