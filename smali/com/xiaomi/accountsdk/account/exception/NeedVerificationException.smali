.class public Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;
.super Ljava/lang/Exception;


# instance fields
.field private final a:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaomi/accountsdk/account/data/MetaLoginData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Need verification code"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;->a:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;-><init>(Lcom/xiaomi/accountsdk/account/data/MetaLoginData;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/xiaomi/accountsdk/account/data/MetaLoginData;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;->a:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;->c:Ljava/lang/String;

    return-object v0
.end method
