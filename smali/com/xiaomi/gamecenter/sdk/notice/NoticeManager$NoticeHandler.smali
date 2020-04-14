.class Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoticeHandler"
.end annotation


# instance fields
.field a:Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;

.field b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;


# direct methods
.method public constructor <init>(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->a:Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->b:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Queue;Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;",
            ">;",
            "Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;",
            ")V"
        }
    .end annotation

    const-string v0, "MiGameSDK.NoticeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postToShowNotice : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "current.config"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const-string v0, "MiGameSDK.NoticeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "currentActivity "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->b(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->b(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->c(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;)Lcom/xiaomi/gamecenter/sdk/notice/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->c(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;)Lcom/xiaomi/gamecenter/sdk/notice/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/notice/a;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "MiGameSDK.NoticeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handler : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->c(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;)Lcom/xiaomi/gamecenter/sdk/notice/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->c(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;)Lcom/xiaomi/gamecenter/sdk/notice/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/notice/a;->b()V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Queue;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->c(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;)Lcom/xiaomi/gamecenter/sdk/notice/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->c(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;)Lcom/xiaomi/gamecenter/sdk/notice/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/notice/a;->b()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "current.config"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;

    if-nez v1, :cond_4

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;

    :cond_4
    iput-object v1, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->a:Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->b:Ljava/util/Queue;

    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->c(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;)Lcom/xiaomi/gamecenter/sdk/notice/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->c(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;)Lcom/xiaomi/gamecenter/sdk/notice/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/notice/a;->b()V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->b(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper;->a()Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper;

    invoke-virtual {v1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;->getNoticeId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const-string v4, "MiGameSDK.NoticeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "show notice queue: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_6

    new-instance v3, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;

    invoke-direct {v3, v1}, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;-><init>(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->b(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;)Landroid/app/Activity;

    move-result-object v1

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->a(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;)Lcom/xiaomi/gamecenter/sdk/bg;

    move-result-object v4

    new-instance v5, Lcom/xiaomi/gamecenter/sdk/notice/b;

    invoke-direct {v5, p0, v2, v0}, Lcom/xiaomi/gamecenter/sdk/notice/b;-><init>(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;Ljava/lang/String;Ljava/util/Queue;)V

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeUrlActionListener;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    invoke-direct {v0, v2, v3}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeUrlActionListener;-><init>(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;)V

    invoke-static {v1, v3, v4, v5, v0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/DialogUtils;->a(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;Lcom/xiaomi/gamecenter/sdk/bg;Lcom/xiaomi/gamecenter/sdk/bf;Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/UrlUtils$a;)V

    goto/16 :goto_0

    :cond_6
    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->a(Ljava/util/Queue;Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->c(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;)Lcom/xiaomi/gamecenter/sdk/notice/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->c(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;)Lcom/xiaomi/gamecenter/sdk/notice/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/notice/a;->a()V

    goto/16 :goto_0

    :pswitch_1
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/DialogUtils;->a()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->a:Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->b:Ljava/util/Queue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->b:Ljava/util/Queue;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->a:Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->a(Ljava/util/Queue;Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
