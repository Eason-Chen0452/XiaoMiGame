.class public Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;
.super Lcom/xiaomi/accountsdk/account/exception/AccountException;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/accountsdk/account/exception/AccountException;-><init>(ILjava/lang/String;)V

    iput-object p3, p0, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const v0, 0x153d9

    const-string v1, "Need captcha code or wrong captcha code"

    invoke-direct {p0, v0, v1, p1}, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
