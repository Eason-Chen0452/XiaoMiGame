.class final Lcom/xiaomi/gamecenter/sdk/ui/actlayout/l;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/l;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x4

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/l;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;I)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/l;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/l;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/l;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v2, v0, v3}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;Landroid/content/Context;IZ)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/l;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/l;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/l;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/l;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;Landroid/content/Context;)V

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/DownloadServiceUtil;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/l;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->b(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;)Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/DownloadServiceUtil;-><init>(Landroid/os/Handler;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/m;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/m;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/l;Lcom/xiaomi/gamecenter/sdk/ui/actlayout/DownloadServiceUtil;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x8ff

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    goto :goto_0

    :sswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/l;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;

    shr-int/lit8 v0, v0, 0xa

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->b(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;I)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/l;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->c(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x900

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/l;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->d(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/l;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->c(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/l;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;

    const-string v1, "\u6e38\u620f\u670d\u52a1\u6821\u9a8c\u5b8c\u6210\uff0c\u5f00\u59cb\u5b89\u88c5"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/l;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->e(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/l;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/l;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/l;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;Landroid/content/Context;IZ)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_8
        0x1 -> :sswitch_4
        0x2 -> :sswitch_5
        0x3 -> :sswitch_6
        0x4 -> :sswitch_7
        0x8 -> :sswitch_8
        0x2710 -> :sswitch_0
        0x4e20 -> :sswitch_1
        0x4e21 -> :sswitch_2
        0x7530 -> :sswitch_3
    .end sparse-switch
.end method
