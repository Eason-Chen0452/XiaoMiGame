.class public Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;
.super Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "No such a user"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
