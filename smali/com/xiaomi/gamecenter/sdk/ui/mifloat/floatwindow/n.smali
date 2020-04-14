.class final Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/n;->c:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/n;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/n;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/n;->c:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager$MiFloatHandler;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager$MiFloatHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/n;->c:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager$MiFloatHandler;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager$MiFloatHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/n;->c:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager$MiFloatHandler;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager$MiFloatHandler;->sendEmptyMessage(I)Z

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->a()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->f()I

    move-result v2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->a()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->e()I

    move-result v3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/n;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->q()V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/n;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->i()V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/n;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->a()I

    move-result v4

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/n;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->b()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/n;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->c()I

    move-result v1

    iget-object v5, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/n;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-virtual {v5}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->d()I

    iget-object v5, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/n;->c:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    iget-object v5, v5, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;

    iget v5, v5, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;->a:I

    iget-object v6, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/n;->c:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    iget-object v6, v6, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;

    iget v6, v6, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;->b:I

    div-int/lit8 v7, v1, 0x2

    add-int/2addr v4, v7

    div-int/lit8 v7, v5, 0x2

    if-ge v4, v7, :cond_0

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/n;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-virtual {v4}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->o()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    sub-int v1, v5, v1

    sub-int/2addr v1, v2

    :cond_1
    add-int v4, v0, v3

    if-gt v6, v4, :cond_2

    sub-int v0, v6, v3

    :cond_2
    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/n;->b:Landroid/view/View;

    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/n;->a(Landroid/view/View;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const-string v2, "MiGameSDK.MiFloatManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "show float menu x = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",y = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/n;->c:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->p(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/n;->c:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->t(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/n;->c:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->p(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/n;->b:Landroid/view/View;

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/n;->c:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/n;->c:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->c(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->q()V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/report/MiFloatDataReport;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
