.class public abstract Lcom/xiaomi/accountsdk/request/PassportLoginRequest;
.super Lcom/xiaomi/accountsdk/request/PassportRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassToken;,
        Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;
    }
.end annotation


# instance fields
.field private final a:Lcom/xiaomi/accountsdk/request/PassportRequest;


# direct methods
.method public constructor <init>(Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)V
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/PassportRequest;-><init>()V

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->a(Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/accountsdk/account/b;->b()Lcom/xiaomi/accountsdk/account/b;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/account/b;->a()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    const-string v0, "PassportLoginRequest"

    const-string v2, "CA-Request not ready for login %s, fallback to https way"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->a:Lcom/xiaomi/accountsdk/request/PassportRequest;

    :goto_1
    return-void

    :cond_1
    iget-object v3, p1, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->f:Ljava/lang/String;

    invoke-static {v3}, Lcom/xiaomi/accountsdk/account/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v4, Lcom/xiaomi/accountsdk/account/PassportCAConstants;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->a()Lcom/xiaomi/accountsdk/request/PassportRequestArguments;

    move-result-object v5

    iget-object v0, v5, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->a:Lcom/xiaomi/accountsdk/utils/EasyMap;

    const-string v6, "sid"

    invoke-virtual {v0, v6}, Lcom/xiaomi/accountsdk/utils/EasyMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->a(Ljava/lang/String;)V

    const-string v3, "_ver"

    invoke-virtual {v5, v3, v4}, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v5, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->a:Lcom/xiaomi/accountsdk/utils/EasyMap;

    const-string v6, "sid"

    invoke-virtual {v3, v6}, Lcom/xiaomi/accountsdk/utils/EasyMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "_sid"

    invoke-virtual {v5, v3, v0}, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v5, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->d:Lcom/xiaomi/accountsdk/utils/EasyMap;

    const-string v6, "_ver"

    invoke-virtual {v3, v6, v4}, Lcom/xiaomi/accountsdk/utils/EasyMap;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    iget-object v3, v5, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->d:Lcom/xiaomi/accountsdk/utils/EasyMap;

    const-string v4, "_sid"

    invoke-virtual {v3, v4, v0}, Lcom/xiaomi/accountsdk/utils/EasyMap;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    const-string v0, "x-mistats-header"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v5}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->a(Lcom/xiaomi/accountsdk/account/b;Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)Lcom/xiaomi/accountsdk/request/PassportCARequest;

    move-result-object v2

    new-instance v0, Lcom/xiaomi/accountsdk/request/d;

    invoke-direct {v0, p0, v2, v1}, Lcom/xiaomi/accountsdk/request/d;-><init>(Lcom/xiaomi/accountsdk/request/PassportLoginRequest;Lcom/xiaomi/accountsdk/request/PassportRequest;Lcom/xiaomi/accountsdk/request/PassportRequest;)V

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->a:Lcom/xiaomi/accountsdk/request/PassportRequest;

    goto :goto_1
.end method


# virtual methods
.method protected abstract a(Lcom/xiaomi/accountsdk/account/b;Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)Lcom/xiaomi/accountsdk/request/PassportCARequest;
.end method

.method protected abstract a(Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;
.end method

.method protected abstract a()Ljava/lang/String;
.end method
