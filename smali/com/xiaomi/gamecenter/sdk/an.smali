.class final Lcom/xiaomi/gamecenter/sdk/an;
.super Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u300a\u6e38\u620f\u670d\u52a1\u300b\u8fde\u63a5\u5f02\u5e38\uff0c\u65e0\u6cd5\u767b\u5f55\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u9519\u8bef\uff0c\u65e0\u6cd5\u767b\u5f55\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->setTouch(Z)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$900()V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->setTouch(Z)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$900()V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u300a\u6e38\u620f\u670d\u52a1\u300b\u8fde\u63a5\u5931\u8d25\uff0c\u5e94\u7528\u4fe1\u606f\u4e3a\u7a7a\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->setTouch(Z)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1000()V

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u300a\u6e38\u620f\u670d\u52a1\u300b\u8fde\u63a5\u5931\u8d25\uff0c\u65e0\u6cd5\u767b\u5f55\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No SO files! This will lead login failed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_7
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700()Landroid/content/Context;

    move-result-object v0

    const-string v1, "APPID \u9519\u8bef\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "APPID_ERROR APPID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_8
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u521d\u59cb\u5316\u4e2d\u8bf7\u7a0d\u540e"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_9
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6682\u4e0d\u652f\u6301\u6b64\u652f\u4ed8\u65b9\u5f0f"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_a
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u64cd\u4f5c\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_b
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u518d\u6309\u4e00\u6b21\u5c06\u4f1a\u9000\u51fa"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
