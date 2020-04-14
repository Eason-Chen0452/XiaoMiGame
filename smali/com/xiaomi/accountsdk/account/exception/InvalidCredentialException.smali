.class public Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;
.super Lcom/xiaomi/accountsdk/account/exception/AccountException;


# instance fields
.field public e:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

.field public f:Ljava/lang/String;

.field public final g:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/accountsdk/account/exception/AccountException;-><init>(ILjava/lang/String;)V

    iput-boolean p3, p0, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->g:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const v0, 0x11180

    move v1, v0

    :goto_0
    if-eqz p1, :cond_1

    const-string v0, "password error or passToken invalid"

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/xiaomi/accountsdk/account/exception/AccountException;-><init>(ILjava/lang/String;)V

    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->g:Z

    return-void

    :cond_0
    const v0, 0x11172

    move v1, v0

    goto :goto_0

    :cond_1
    const-string v0, "no password"

    goto :goto_1
.end method
