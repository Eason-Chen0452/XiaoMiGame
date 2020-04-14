.class final Lcom/xiaomi/gamecenter/sdk/ui/actlayout/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/b;->f:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;

    iput-wide p2, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/b;->a:J

    iput-object p4, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/b;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/b;->c:Ljava/lang/String;

    iput p6, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/b;->d:I

    iput-object p7, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/b;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/b;->f:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->f(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/b;->a:J

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/b;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/b;->c:Ljava/lang/String;

    iget v6, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/b;->d:I

    iget-object v7, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/b;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/b;->f:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->d(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    move-result-object v8

    invoke-static/range {v1 .. v8}, Lcom/xiaomi/gamecenter/sdk/protocol/MessageFactory;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterRsp;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "setUserInfoToGameCenterRsp is NULL!"

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterRsp;->getRetCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setUserInfoToGameCenterRsp is ERROR! Info-msg:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterRsp;->getErrMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterRsp;->getRetCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "setUserInfoToGameCenterRsp is SUCCESS!"

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->c(Ljava/lang/String;)V

    goto :goto_0
.end method
