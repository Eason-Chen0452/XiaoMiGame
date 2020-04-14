.class public Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;
.super Lcom/xiaomi/accountsdk/account/exception/HttpException;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/accountsdk/account/exception/HttpException;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/accountsdk/account/exception/HttpException;-><init>(ILjava/lang/String;)V

    iput-object v1, p0, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;->d:Ljava/lang/String;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;->e:Ljava/lang/String;

    return-void
.end method
