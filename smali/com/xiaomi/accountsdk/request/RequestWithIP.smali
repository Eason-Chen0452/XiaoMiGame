.class public Lcom/xiaomi/accountsdk/request/RequestWithIP;
.super Lcom/xiaomi/accountsdk/request/PassportRequest;


# instance fields
.field private final a:Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;

.field private final b:Lcom/xiaomi/accountsdk/request/IPStrategy;

.field private final c:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;


# direct methods
.method public constructor <init>(Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;Lcom/xiaomi/accountsdk/request/IPStrategy;Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;)V
    .locals 4

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/PassportRequest;-><init>()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->a:Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->b:Lcom/xiaomi/accountsdk/request/IPStrategy;

    new-instance v0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    const/4 v2, 0x0

    new-instance v3, Lcom/xiaomi/accountsdk/request/b;

    invoke-direct {v3}, Lcom/xiaomi/accountsdk/request/b;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;-><init>([Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;)V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->c:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    return-void
.end method
