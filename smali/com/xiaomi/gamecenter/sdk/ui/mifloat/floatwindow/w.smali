.class final Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/MiFloatPosition;

.field final synthetic b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/MiFloatPosition;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/w;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/w;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/MiFloatPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/w;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->c(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/n;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/w;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager$MiFloatHandler;

    move-result-object v0

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager$MiFloatHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/w;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager$MiFloatHandler;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager$MiFloatHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/w;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->c(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->i()V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/w;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->c(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/w;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->c(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->clearAnimation()V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/w;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->p(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/w;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->c(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/w;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->c(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/w;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/MiFloatPosition;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/MiFloatPosition;->a()I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/w;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/MiFloatPosition;

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/MiFloatPosition;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->a(II)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/w;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->j(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)V

    const-string v0, "MiGameSDK.MiFloatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showFloat "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/w;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/MiFloatPosition;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/w;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->c(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;Z)Z

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/report/MiFloatDataReport;->a()V

    return-void
.end method
