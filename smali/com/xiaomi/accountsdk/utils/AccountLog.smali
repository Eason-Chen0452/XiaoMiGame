.class public abstract Lcom/xiaomi/accountsdk/utils/AccountLog;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/xiaomi/accountsdk/utils/AccountLog;

.field private static b:Lcom/xiaomi/accountsdk/utils/AccountLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/utils/b;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/b;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/utils/AccountLog;->a:Lcom/xiaomi/accountsdk/utils/AccountLog;

    sput-object v0, Lcom/xiaomi/accountsdk/utils/AccountLog;->b:Lcom/xiaomi/accountsdk/utils/AccountLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 3

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/IpFilterHelper;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/IpFilterHelper;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_2

    new-instance p0, Ljava/net/SocketTimeoutException;

    invoke-direct {p0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/Throwable;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    sget-object v0, Lcom/xiaomi/accountsdk/utils/AccountLog;->b:Lcom/xiaomi/accountsdk/utils/AccountLog;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    sget-object v0, Lcom/xiaomi/accountsdk/utils/AccountLog;->b:Lcom/xiaomi/accountsdk/utils/AccountLog;

    invoke-static {p2}, Lcom/xiaomi/accountsdk/utils/AccountLog;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    sget-object v0, Lcom/xiaomi/accountsdk/utils/AccountLog;->b:Lcom/xiaomi/accountsdk/utils/AccountLog;

    invoke-static {p2}, Lcom/xiaomi/accountsdk/utils/AccountLog;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/utils/AccountLog;->b:Lcom/xiaomi/accountsdk/utils/AccountLog;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/utils/AccountLog;->b:Lcom/xiaomi/accountsdk/utils/AccountLog;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/utils/AccountLog;->b:Lcom/xiaomi/accountsdk/utils/AccountLog;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/utils/AccountLog;->b:Lcom/xiaomi/accountsdk/utils/AccountLog;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
.end method

.method protected abstract a(Ljava/lang/String;Ljava/lang/Throwable;)I
.end method

.method protected abstract b(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected abstract b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
.end method

.method protected abstract c(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected abstract d(Ljava/lang/String;Ljava/lang/String;)I
.end method
