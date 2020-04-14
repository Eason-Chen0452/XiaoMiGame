.class final Lcom/xiaomi/gamecenter/sdk/az;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;

.field final synthetic c:Lcom/xiaomi/gamecenter/sdk/ServiceUpdateHandler;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ServiceUpdateHandler;Landroid/content/Context;Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/az;->c:Lcom/xiaomi/gamecenter/sdk/ServiceUpdateHandler;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/az;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/az;->b:Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/az;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/b;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://app.xiaomi.com/details?id=com.xiaomi.gamecenter.sdk.service&back=true&ref=gamesdkjar&startDownload=true"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/az;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/az;->b:Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;

    invoke-direct {v1, v2}, Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;-><init>(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sDownloadHandler:Lcom/xiaomi/gamecenter/sdk/DownloadHandler;

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/az;->b:Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;

    invoke-direct {v1, v2}, Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;-><init>(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sDownloadHandler:Lcom/xiaomi/gamecenter/sdk/DownloadHandler;

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
