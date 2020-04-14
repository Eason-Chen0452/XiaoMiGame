.class final Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/a;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/b;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/b;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->b(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager$MiMsgHandler;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager$MiMsgHandler;->sendEmptyMessage(I)Z

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/report/MiFloatDataReport;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "miservicesdk://mifloat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/b;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->c(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u6b64\u529f\u80fd"

    invoke-static {v1, v0, v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_1
    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/report/MiFloatDataReport;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/b;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->b(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager$MiMsgHandler;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager$MiMsgHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/b;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->c(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/UrlUtils;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/UrlUtils$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
