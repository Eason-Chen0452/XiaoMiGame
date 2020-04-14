.class public final Lcom/xiaomi/accountsdk/account/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xiaomi/accountsdk/account/b;


# instance fields
.field private b:Lcom/xiaomi/accountsdk/account/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/account/b;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/b;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/account/b;->a:Lcom/xiaomi/accountsdk/account/b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/b;->b:Lcom/xiaomi/accountsdk/account/a;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/URLs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lcom/xiaomi/accountsdk/account/b;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/account/b;->a:Lcom/xiaomi/accountsdk/account/b;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/b;->b:Lcom/xiaomi/accountsdk/account/a;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/xiaomi/accountsdk/account/XMPassport;->a:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/b;->b:Lcom/xiaomi/accountsdk/account/a;

    invoke-interface {v1}, Lcom/xiaomi/accountsdk/account/a;->a()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
