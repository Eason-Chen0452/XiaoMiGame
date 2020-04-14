.class final Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/aa;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->i(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager$MiFloatHandler;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager$MiFloatHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager$MiFloatHandler;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager$MiFloatHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager$MiFloatHandler;

    move-result-object v0

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager$MiFloatHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager$MiFloatHandler;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager$MiFloatHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->c(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->i()V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->c(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager$MiFloatHandler;

    move-result-object v0

    const/16 v1, 0x3f1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager$MiFloatHandler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->j(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->f(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->o(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->c(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager$MiFloatHandler;

    move-result-object v0

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager$MiFloatHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public final a(I)V
    .locals 5

    const-string v0, "MiGameSDK.MiFloatManager"

    const-string v1, "onHeightChanged start============="

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MiGameSDK.MiFloatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "height "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/m;->a(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/m;->b(Landroid/content/Context;)I

    move-result v1

    const-string v2, "MiGameSDK.MiFloatManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " screenWidth "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",screenHeight "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/m;->b(Landroid/app/Activity;)Z

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/m;->a(Landroid/app/Activity;)Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/m;->d(Landroid/content/Context;)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/m;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    iget-object v1, v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;

    sub-int v0, p1, v0

    iput v0, v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;->b:I

    :goto_1
    const-string v0, "MiGameSDK.MiFloatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "miFloatLayoutParams "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    iget-object v2, v2, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MiGameSDK.MiFloatManager"

    const-string v1, "onHeightChanged end============="

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;

    iput p1, v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;->b:I

    goto :goto_1
.end method

.method public final b(I)V
    .locals 5

    const-string v0, "MiGameSDK.MiFloatManager"

    const-string v1, "onWidthChanged start============="

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MiGameSDK.MiFloatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "width "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/m;->a(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/m;->b(Landroid/content/Context;)I

    move-result v1

    const-string v2, "MiGameSDK.MiFloatManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " screenWidth "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",screenHeight "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/m;->b(Landroid/app/Activity;)Z

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/m;->a(Landroid/app/Activity;)Z

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/m;->f(Landroid/content/Context;)Z

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/m;->d(Landroid/content/Context;)I

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/m;->c(Landroid/content/Context;)I

    const-string v0, "MiGameSDK.MiFloatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "contentView.getMeasuredHeight() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->p(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MiGameSDK.MiFloatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "contentView.getMeasuredWidth() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->p(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->p(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->p(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    iget-object v1, v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;

    if-lez v0, :cond_3

    :goto_0
    iput v0, v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;->a:I

    const-string v0, "MiGameSDK.MiFloatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "miFloatLayoutParams "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    iget-object v2, v2, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MiGameSDK.MiFloatManager"

    const-string v1, "onWidthChanged end============="

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    move v0, p1

    goto :goto_0
.end method
