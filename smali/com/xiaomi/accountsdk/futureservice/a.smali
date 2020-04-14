.class public abstract Lcom/xiaomi/accountsdk/futureservice/a;
.super Ljava/util/concurrent/FutureTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/futureservice/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ServerDataType:",
        "Ljava/lang/Object;",
        "ClientDataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TClientDataType;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/xiaomi/accountsdk/futureservice/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/accountsdk/futureservice/a$a",
            "<TClientDataType;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/xiaomi/accountsdk/futureservice/a$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/futureservice/a$a",
            "<TClientDataType;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/accountsdk/futureservice/b;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/futureservice/b;-><init>()V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object p1, p0, Lcom/xiaomi/accountsdk/futureservice/a;->a:Lcom/xiaomi/accountsdk/futureservice/a$a;

    return-void
.end method

.method private static a()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ClientFuture#calling this from your main thread can lead to deadlock"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v1, "ClientFuture"

    const-string v2, "calling this from your main thread can lead to deadlock and/or ANRs"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TServerDataType;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/futureservice/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/futureservice/a;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/futureservice/a;->setException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected abstract b(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TServerDataType;)TClientDataType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method protected done()V
    .locals 2

    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->done()V

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/futureservice/a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/accountsdk/futureservice/a;->a:Lcom/xiaomi/accountsdk/futureservice/a$a;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/xiaomi/accountsdk/futureservice/c;

    invoke-direct {v1, p0}, Lcom/xiaomi/accountsdk/futureservice/c;-><init>(Lcom/xiaomi/accountsdk/futureservice/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TClientDataType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/futureservice/a;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/accountsdk/futureservice/a;->a()V

    :cond_0
    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TClientDataType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/futureservice/a;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/accountsdk/futureservice/a;->a()V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
