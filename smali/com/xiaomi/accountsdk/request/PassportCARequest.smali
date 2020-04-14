.class public Lcom/xiaomi/accountsdk/request/PassportCARequest;
.super Lcom/xiaomi/accountsdk/request/PassportRequest;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;

.field private final c:Lcom/xiaomi/accountsdk/account/b;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xiaomi/accountsdk/request/PassportCARequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/request/PassportCARequest;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;Lcom/xiaomi/accountsdk/account/b;)V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/PassportRequest;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/request/PassportCARequest;->d:Z

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/PassportCARequest;->b:Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/request/PassportCARequest;->c:Lcom/xiaomi/accountsdk/account/b;

    return-void
.end method
