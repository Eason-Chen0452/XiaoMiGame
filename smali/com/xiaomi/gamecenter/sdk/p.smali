.class final Lcom/xiaomi/gamecenter/sdk/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

.field final synthetic b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/p;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/p;->a:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/p;->a:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;-><init>(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/protocol/login/MessageRequest_GetFaultNotice;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/p;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/gamecenter/sdk/protocol/login/MessageRequest_GetFaultNotice;-><init>(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/protocol/login/MessageRequest_GetFaultNotice;->a()Lcom/xiaomi/gamecenter/sdk/protocol/login/FaultInfo;

    move-result-object v1

    const-string v2, "MiGameSDK.MiCommplatform"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getFaultInfo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/protocol/login/FaultInfo;->a()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->a()Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/gamecenter/sdk/q;

    invoke-direct {v2, p0}, Lcom/xiaomi/gamecenter/sdk/q;-><init>(Lcom/xiaomi/gamecenter/sdk/p;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->a(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/notice/RequestListener;)V

    :goto_0
    return-void

    :cond_1
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/p;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/xiaomi/gamecenter/sdk/ui/fault/ViewFaultNoticeActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "faultInfo"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "app"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/p;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MiGameSDK.MiCommplatform"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/com/wali/basetool/log/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
