.class public final Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationLoginFuture;
.super Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotificationLoginFuture"
.end annotation


# direct methods
.method public constructor <init>(Lcom/xiaomi/passport/uicontroller/d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/uicontroller/d$a",
            "<",
            "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture;-><init>(Lcom/xiaomi/passport/uicontroller/d$a;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/xiaomi/accountsdk/account/data/MiLoginResult;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/InvalidResponseException;,
            Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;,
            Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;,
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/account/exception/IllegalDeviceException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1}, Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture;->a(Lcom/xiaomi/accountsdk/account/data/MiLoginResult;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidStep2codeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this should not be happen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this should not be happen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this should not be happen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    check-cast p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationLoginFuture;->a(Lcom/xiaomi/accountsdk/account/data/MiLoginResult;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v0

    return-object v0
.end method
