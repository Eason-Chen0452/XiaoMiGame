.class public Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;
.super Lcom/xiaomi/accountsdk/futureservice/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture$ServiceTokenCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/accountsdk/futureservice/a",
        "<",
        "Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;",
        "Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/xiaomi/accountsdk/futureservice/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/futureservice/a$a",
            "<",
            "Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/futureservice/a;-><init>(Lcom/xiaomi/accountsdk/futureservice/a$a;)V

    return-void
.end method

.method private a(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-super {p0, v0, v1, p2}, Lcom/xiaomi/accountsdk/futureservice/a;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/xiaomi/accountsdk/futureservice/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    invoke-direct {v1, v2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_CANCELLED:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->a(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->c(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->b()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Landroid/os/RemoteException;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    invoke-direct {v1, v2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_REMOTE_EXCEPTION:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->a(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->c(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->b()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    invoke-direct {v1, v2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_UNKNOWN:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->a(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->c(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->b()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_2
    move-exception v0

    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    invoke-direct {v0, v2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_TIME_OUT:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->a(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "time out after "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->c(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->b()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method protected final bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    check-cast p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    return-object p1
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;->a(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;->a(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0
.end method
