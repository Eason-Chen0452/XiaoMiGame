.class public Lcom/xiaomi/hy/dj/HyDJ;
.super Ljava/lang/Object;


# static fields
.field private static volatile mInstance:Lcom/xiaomi/hy/dj/HyDJ;


# instance fields
.field private appid:Ljava/lang/String;

.field private appkey:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/hy/dj/HyDJ;->appid:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/hy/dj/HyDJ;->appkey:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/hy/dj/HyDJ;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/xiaomi/hy/dj/e/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/hy/dj/e/b;->a()Lcom/xiaomi/hy/dj/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/e/b;->c()V

    invoke-static {p1}, Lcom/xiaomi/hy/dj/f/o;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/xiaomi/hy/dj/e/a;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/xiaomi/hy/dj/a/b;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/HyDJ;->getMilinkAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mi/milink/sdk/base/Global;->init(Landroid/content/Context;Lcom/mi/milink/sdk/data/ClientAppInfo;)V

    return-void
.end method

.method public static getInstance()Lcom/xiaomi/hy/dj/HyDJ;
    .locals 2

    sget-object v0, Lcom/xiaomi/hy/dj/HyDJ;->mInstance:Lcom/xiaomi/hy/dj/HyDJ;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "please HyDJ.init() in application before use this method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/xiaomi/hy/dj/HyDJ;->mInstance:Lcom/xiaomi/hy/dj/HyDJ;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/hy/dj/HyDJ;->mInstance:Lcom/xiaomi/hy/dj/HyDJ;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/hy/dj/f/m;->b(Landroid/content/Context;)V

    new-instance v0, Lcom/xiaomi/hy/dj/HyDJ;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/hy/dj/HyDJ;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/hy/dj/HyDJ;->mInstance:Lcom/xiaomi/hy/dj/HyDJ;

    :cond_0
    return-void
.end method


# virtual methods
.method public aliPay(Landroid/app/Activity;Lcom/xiaomi/hy/dj/purchase/Purchase;Lcom/xiaomi/hy/dj/PayResultCallback;)V
    .locals 4

    invoke-static {}, Lcom/xiaomi/hy/dj/e/b;->a()Lcom/xiaomi/hy/dj/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/e/b;->b()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/hy/dj/HyDjActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lcom/xiaomi/hy/dj/model/AppInfo;

    invoke-direct {v1}, Lcom/xiaomi/hy/dj/model/AppInfo;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/hy/dj/HyDJ;->appid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/hy/dj/model/AppInfo;->setAppid(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/hy/dj/HyDJ;->appkey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/hy/dj/model/AppInfo;->setAppkey(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/xiaomi/hy/dj/model/CallModel;->add(Lcom/xiaomi/hy/dj/PayResultCallback;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/hy/dj/model/AppInfo;->setCallId(J)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/xiaomi/hy/dj/model/AppInfo;->setPayType(I)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_appinfo"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "_purchase"

    invoke-virtual {v2, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "_bundle"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public getMilinkAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;
    .locals 3

    const-string v0, "misdk"

    new-instance v1, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;

    const/16 v2, 0x4e22

    invoke-direct {v1, v2}, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->setAppName(Ljava/lang/String;)Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;

    iget-object v0, p0, Lcom/xiaomi/hy/dj/HyDJ;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->setPackageName(Ljava/lang/String;)Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;

    const-string v0, "RELEASE"

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->setReleaseChannel(Ljava/lang/String;)Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;

    const-string v0, "SDK_VISITOR_DJPAY_1.1.6"

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->setVersionName(Ljava/lang/String;)Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;

    const-string v0, "SDK_VISITOR_DJPAY_1.1.6"

    invoke-static {v0}, Lcom/xiaomi/hy/dj/f/k;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->setVersionCode(I)Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->setLinkMode(I)Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->build()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public payEco(Landroid/app/Activity;Lcom/xiaomi/hy/dj/purchase/Purchase;Lcom/xiaomi/hy/dj/PayResultCallback;)V
    .locals 4

    invoke-static {}, Lcom/xiaomi/hy/dj/e/b;->a()Lcom/xiaomi/hy/dj/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/e/b;->b()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/hy/dj/HyDjActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lcom/xiaomi/hy/dj/model/AppInfo;

    invoke-direct {v1}, Lcom/xiaomi/hy/dj/model/AppInfo;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/hy/dj/HyDJ;->appid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/hy/dj/model/AppInfo;->setAppid(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/hy/dj/HyDJ;->appkey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/hy/dj/model/AppInfo;->setAppkey(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/xiaomi/hy/dj/model/CallModel;->add(Lcom/xiaomi/hy/dj/PayResultCallback;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/hy/dj/model/AppInfo;->setCallId(J)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/xiaomi/hy/dj/model/AppInfo;->setPayType(I)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_appinfo"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "_purchase"

    invoke-virtual {v2, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "_bundle"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public qqPay(Landroid/app/Activity;Lcom/xiaomi/hy/dj/purchase/Purchase;Lcom/xiaomi/hy/dj/PayResultCallback;)V
    .locals 4

    invoke-static {}, Lcom/xiaomi/hy/dj/e/b;->a()Lcom/xiaomi/hy/dj/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/e/b;->b()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/hy/dj/HyDjActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lcom/xiaomi/hy/dj/model/AppInfo;

    invoke-direct {v1}, Lcom/xiaomi/hy/dj/model/AppInfo;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/hy/dj/HyDJ;->appid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/hy/dj/model/AppInfo;->setAppid(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/hy/dj/HyDJ;->appkey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/hy/dj/model/AppInfo;->setAppkey(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/xiaomi/hy/dj/model/CallModel;->add(Lcom/xiaomi/hy/dj/PayResultCallback;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/hy/dj/model/AppInfo;->setCallId(J)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/xiaomi/hy/dj/model/AppInfo;->setPayType(I)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_appinfo"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "_purchase"

    invoke-virtual {v2, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "_bundle"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public szfPay(Landroid/app/Activity;Lcom/xiaomi/hy/dj/purchase/Purchase;Lcom/xiaomi/hy/dj/PayResultCallback;)V
    .locals 4

    invoke-static {}, Lcom/xiaomi/hy/dj/e/b;->a()Lcom/xiaomi/hy/dj/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/e/b;->b()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/hy/dj/HyDjActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lcom/xiaomi/hy/dj/model/AppInfo;

    invoke-direct {v1}, Lcom/xiaomi/hy/dj/model/AppInfo;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/hy/dj/HyDJ;->appid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/hy/dj/model/AppInfo;->setAppid(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/hy/dj/HyDJ;->appkey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/hy/dj/model/AppInfo;->setAppkey(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/xiaomi/hy/dj/model/CallModel;->add(Lcom/xiaomi/hy/dj/PayResultCallback;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/hy/dj/model/AppInfo;->setCallId(J)V

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/xiaomi/hy/dj/model/AppInfo;->setPayType(I)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_appinfo"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "_purchase"

    invoke-virtual {v2, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "_bundle"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public wxPay(Landroid/app/Activity;Lcom/xiaomi/hy/dj/purchase/Purchase;Lcom/xiaomi/hy/dj/PayResultCallback;)V
    .locals 4

    invoke-static {}, Lcom/xiaomi/hy/dj/e/b;->a()Lcom/xiaomi/hy/dj/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/e/b;->b()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/hy/dj/HyDjActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lcom/xiaomi/hy/dj/model/AppInfo;

    invoke-direct {v1}, Lcom/xiaomi/hy/dj/model/AppInfo;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/hy/dj/HyDJ;->appid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/hy/dj/model/AppInfo;->setAppid(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/hy/dj/HyDJ;->appkey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/hy/dj/model/AppInfo;->setAppkey(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/xiaomi/hy/dj/model/CallModel;->add(Lcom/xiaomi/hy/dj/PayResultCallback;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/hy/dj/model/AppInfo;->setCallId(J)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xiaomi/hy/dj/model/AppInfo;->setPayType(I)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_appinfo"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "_purchase"

    invoke-virtual {v2, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "_bundle"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
