.class public Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassToken;
.super Lcom/xiaomi/accountsdk/request/PassportLoginRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/request/PassportLoginRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByPassToken"
.end annotation


# direct methods
.method public constructor <init>(Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;-><init>(Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/xiaomi/accountsdk/account/b;Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)Lcom/xiaomi/accountsdk/request/PassportCARequest;
    .locals 2

    new-instance v0, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$GetAsString;

    invoke-direct {v0, p2}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$GetAsString;-><init>(Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)V

    new-instance v1, Lcom/xiaomi/accountsdk/request/PassportCARequest;

    invoke-direct {v1, v0, p1}, Lcom/xiaomi/accountsdk/request/PassportCARequest;-><init>(Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;Lcom/xiaomi/accountsdk/account/b;)V

    return-object v1
.end method

.method protected final a(Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$GetAsString;

    invoke-direct {v0, p1}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$GetAsString;-><init>(Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)V

    return-object v0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    const-string v0, "byPassToken"

    return-object v0
.end method
