.class public Lcom/xiaomi/accountsdk/account/exception/InvalidParameterException;
.super Lcom/xiaomi/accountsdk/account/exception/AccountException;


# instance fields
.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/accountsdk/account/exception/AccountException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/accountsdk/account/exception/InvalidParameterException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, p2}, Lcom/xiaomi/accountsdk/account/exception/AccountException;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/exception/InvalidParameterException;->e:Ljava/lang/String;

    return-void
.end method
