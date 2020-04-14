.class final Lcom/xiaomi/gamecenter/sdk/bk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:J

.field final synthetic c:Lcom/xiaomi/gamecenter/sdk/bh;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/bh;Landroid/app/Dialog;J)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/bk;->c:Lcom/xiaomi/gamecenter/sdk/bh;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/bk;->a:Landroid/app/Dialog;

    iput-wide p3, p0, Lcom/xiaomi/gamecenter/sdk/bk;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bk;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bk;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bk;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bk;->c:Lcom/xiaomi/gamecenter/sdk/bh;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/bh;->c(Lcom/xiaomi/gamecenter/sdk/bh;)Lcom/xiaomi/gamecenter/sdk/bh$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bk;->c:Lcom/xiaomi/gamecenter/sdk/bh;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/bh;->c(Lcom/xiaomi/gamecenter/sdk/bh;)Lcom/xiaomi/gamecenter/sdk/bh$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/bh$a;->a()V

    :cond_0
    const-string v0, "MiGameSDK.SplashScreenManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "splash all time "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/gamecenter/sdk/bk;->b:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/bk;->c:Lcom/xiaomi/gamecenter/sdk/bh;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/bh;->c(Lcom/xiaomi/gamecenter/sdk/bh;)Lcom/xiaomi/gamecenter/sdk/bh$a;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/bk;->c:Lcom/xiaomi/gamecenter/sdk/bh;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/bh;->c(Lcom/xiaomi/gamecenter/sdk/bh;)Lcom/xiaomi/gamecenter/sdk/bh$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/gamecenter/sdk/bh$a;->a()V

    :cond_2
    const-string v1, "MiGameSDK.SplashScreenManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/com/wali/basetool/log/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
