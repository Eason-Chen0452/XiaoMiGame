.class public abstract Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture;
.super Lcom/xiaomi/passport/uicontroller/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$AddOrUpdateUICallback;,
        Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationAuthUICallback;,
        Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$Step2LoginUICallback;,
        Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationLoginUICallback;,
        Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$PasswordLoginUICallback;,
        Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$AddOrUpdateAccountFuture;,
        Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationAuthFuture;,
        Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$Step2LoginFuture;,
        Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationLoginFuture;,
        Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$PasswordLoginFuture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/uicontroller/d",
        "<",
        "Lcom/xiaomi/accountsdk/account/data/MiLoginResult;",
        "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
        ">;"
    }
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

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/uicontroller/d;-><init>(Lcom/xiaomi/passport/uicontroller/d$a;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/xiaomi/accountsdk/account/data/MiLoginResult;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/InvalidResponseException;,
            Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;,
            Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;,
            Lcom/xiaomi/accountsdk/account/exception/InvalidStep2codeException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;,
            Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;,
            Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;,
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/account/exception/IllegalDeviceException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x1

    if-nez p1, :cond_0

    new-instance v0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    const-string v1, "result is null"

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->h:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this should not be happen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->c:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;

    iget-object v1, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :pswitch_3
    new-instance v0, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;

    iget-object v1, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->f:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    iget-object v2, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;-><init>(Lcom/xiaomi/accountsdk/account/data/MetaLoginData;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :pswitch_4
    new-instance v0, Lcom/xiaomi/accountsdk/account/exception/InvalidStep2codeException;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/exception/InvalidStep2codeException;-><init>()V

    throw v0

    :pswitch_5
    iget-boolean v0, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->j:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/xiaomi/accountsdk/account/exception/PassportIOException;

    const/4 v1, 0x0

    const-string v2, "http exception"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/exception/PassportIOException;-><init>(ILjava/lang/String;)V

    iget-object v1, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/exception/PassportIOException;->b:Ljava/lang/String;

    iput-boolean v3, v0, Lcom/xiaomi/accountsdk/account/exception/PassportIOException;->c:Z

    throw v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "network error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    new-instance v0, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;

    iget-boolean v1, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->i:Z

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;-><init>(Z)V

    iget-object v1, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->f:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->e:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    iget-object v1, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->f:Ljava/lang/String;

    throw v0

    :pswitch_7
    new-instance v0, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;

    iget-object v1, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_8
    new-instance v0, Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;-><init>()V

    throw v0

    :pswitch_9
    new-instance v0, Lcom/xiaomi/accountsdk/request/AccessDeniedException;

    const/16 v1, 0x193

    const-string v2, "access denied"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/accountsdk/request/AccessDeniedException;-><init>(ILjava/lang/String;)V

    iget-boolean v1, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->j:Z

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/exception/HttpException;->b:Ljava/lang/String;

    iput-boolean v3, v0, Lcom/xiaomi/accountsdk/account/exception/HttpException;->c:Z

    :cond_2
    throw v0

    :pswitch_a
    new-instance v0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    const-string v1, "server error"

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->j:Z

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/exception/AccountException;->c:Ljava/lang/String;

    iput-boolean v3, v0, Lcom/xiaomi/accountsdk/account/exception/AccountException;->d:Z

    :cond_3
    throw v0

    :pswitch_b
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "time or network error"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    new-instance v0, Lcom/xiaomi/accountsdk/account/exception/IllegalDeviceException;

    const-string v1, "device id should not be null"

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/account/exception/IllegalDeviceException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_4

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_4
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Service side fatal error"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_c
        :pswitch_b
        :pswitch_4
        :pswitch_0
        :pswitch_d
    .end packed-switch
.end method

.method protected synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    check-cast p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture;->a(Lcom/xiaomi/accountsdk/account/data/MiLoginResult;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v0

    return-object v0
.end method
