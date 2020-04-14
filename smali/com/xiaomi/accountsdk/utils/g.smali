.class final Lcom/xiaomi/accountsdk/utils/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/accountsdk/utils/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/utils/f;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/utils/g;->a:Lcom/xiaomi/accountsdk/utils/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SyncServerTimeExecutor"

    const-string v2, "syncServerTime"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "SyncServerTimeExecutor"

    const-string v2, "syncServerTime"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "SyncServerTimeExecutor"

    const-string v2, "syncServerTime"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
