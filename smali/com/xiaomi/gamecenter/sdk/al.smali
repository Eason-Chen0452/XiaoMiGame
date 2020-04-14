.class final Lcom/xiaomi/gamecenter/sdk/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/al;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/al;->a:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/al;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/al;->a:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;-><init>(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/al;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/protocol/MessageFactory;->a(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp;

    move-result-object v0

    const-string v1, "MiGameSDK.MiCommplatform"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reqSdkInit rsp : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp;->getRetCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp;->getDispalyToolBar()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MiGameSDK.MiCommplatform"

    const-string v2, "reqSdkInit error"

    invoke-static {v1, v2, v0}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
