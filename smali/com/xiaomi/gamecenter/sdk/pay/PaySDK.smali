.class public Lcom/xiaomi/gamecenter/sdk/pay/PaySDK;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/xiaomi/gamecenter/sdk/pay/PaySDK;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/pay/PaySDK;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/pay/PaySDK;->c:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->init(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lcom/xiaomi/hy/dj/HyDJ;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a()Lcom/xiaomi/gamecenter/sdk/pay/PaySDK;
    .locals 2

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/pay/PaySDK;->a:Lcom/xiaomi/gamecenter/sdk/pay/PaySDK;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "please HyAwPay.init() in application before use this method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/pay/PaySDK;->a:Lcom/xiaomi/gamecenter/sdk/pay/PaySDK;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
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
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/pay/PaySDK;->a:Lcom/xiaomi/gamecenter/sdk/pay/PaySDK;

    if-nez v0, :cond_2

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/pay/PaySDK;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/gamecenter/sdk/pay/PaySDK;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/pay/PaySDK;->a:Lcom/xiaomi/gamecenter/sdk/pay/PaySDK;

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;Lcom/xiaomi/gamecenter/sdk/pay/b;)V
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "_mibuyinfo"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "_appid"

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/pay/PaySDK;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_appkey"

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/pay/PaySDK;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_callback"

    invoke-static {p3}, Lcom/xiaomi/gamecenter/sdk/entry/CallModel;->add(Lcom/xiaomi/gamecenter/sdk/pay/b;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "_bundle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p1, v6, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
