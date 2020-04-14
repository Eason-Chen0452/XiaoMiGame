.class final Lcom/xiaomi/passport/servicetoken/ServiceTokenUIErrorHandler$1;
.super Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse$Stub;


# instance fields
.field final synthetic val$future:Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

.field final synthetic val$previousResult:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIErrorHandler$1;->val$previousResult:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    iput-object p2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIErrorHandler$1;->val$future:Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    invoke-direct {p0}, Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIErrorHandler$1;->val$future:Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    new-instance v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIErrorHandler$1;->val$previousResult:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    iget-object v2, v2, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_CANCELLED:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->a(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->b()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIErrorHandler$1;->val$future:Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIErrorHandler$1;->val$previousResult:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onRequestContinued()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIErrorHandler$1;->val$future:Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIErrorHandler$1;->val$previousResult:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onResult(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIErrorHandler$1;->val$previousResult:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    iget-object v0, v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xiaomi/passport/servicetoken/AMAuthTokenConverter;->a(Landroid/os/Bundle;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIErrorHandler$1;->val$future:Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;->a(Ljava/lang/Object;)V

    return-void
.end method
