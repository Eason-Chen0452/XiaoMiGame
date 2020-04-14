.class public Lcom/xiaomi/gamecenter/sdk/pay/IndependentPay;
.super Ljava/lang/Object;


# static fields
.field private static volatile d:Lcom/xiaomi/gamecenter/sdk/pay/IndependentPay;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/pay/IndependentPay;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/pay/IndependentPay;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/pay/IndependentPay;->c:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->init(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lcom/xiaomi/hy/dj/HyDJ;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "context\u3001appid \u3001appkey must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/pay/IndependentPay;->d:Lcom/xiaomi/gamecenter/sdk/pay/IndependentPay;

    if-nez v0, :cond_2

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/pay/IndependentPay;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/gamecenter/sdk/pay/IndependentPay;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/pay/IndependentPay;->d:Lcom/xiaomi/gamecenter/sdk/pay/IndependentPay;

    :cond_2
    return-void
.end method
