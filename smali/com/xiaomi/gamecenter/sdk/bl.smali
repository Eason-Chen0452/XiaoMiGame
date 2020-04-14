.class final Lcom/xiaomi/gamecenter/sdk/bl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

.field final synthetic c:Lcom/xiaomi/gamecenter/sdk/bh;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/bh;Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/bl;->c:Lcom/xiaomi/gamecenter/sdk/bh;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/bl;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/bl;->b:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bl;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/bh;->a(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/bl;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/bl;->b:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-static {v2, v3}, Lcom/xiaomi/gamecenter/sdk/protocol/MessageFactory;->a(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;

    move-result-object v2

    const-string v3, "MiGameSDK.SplashScreenManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GetSplashScreenRsp rsp "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->getRetCode()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->getSplashScreen()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/bl;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/xiaomi/gamecenter/sdk/bh;->a(Landroid/content/Context;Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;)V

    :cond_2
    const-string v2, "MiGameSDK.SplashScreenManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "request splash data "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/com/wali/basetool/log/Logger;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MiGameSDK.SplashScreenManager"

    const-string v2, "getSplashScreen error"

    invoke-static {v1, v2, v0}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
