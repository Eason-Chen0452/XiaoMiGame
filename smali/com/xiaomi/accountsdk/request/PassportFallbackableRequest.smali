.class public abstract Lcom/xiaomi/accountsdk/request/PassportFallbackableRequest;
.super Lcom/xiaomi/accountsdk/request/PassportRequest;


# instance fields
.field private final a:Lcom/xiaomi/accountsdk/request/PassportRequest;

.field private final b:Lcom/xiaomi/accountsdk/request/PassportRequest;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/xiaomi/accountsdk/request/PassportRequest;Lcom/xiaomi/accountsdk/request/PassportRequest;)V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/PassportRequest;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/request/PassportFallbackableRequest;->c:Z

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "both arguments should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/PassportFallbackableRequest;->a:Lcom/xiaomi/accountsdk/request/PassportRequest;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/request/PassportFallbackableRequest;->b:Lcom/xiaomi/accountsdk/request/PassportRequest;

    return-void
.end method
