.class final Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field a:J

.field final synthetic b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)V
    .locals 2

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ae;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ae;->a:J

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ae;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    iget-object v2, v2, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

    sget-object v3, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;->NORMAL:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

    if-eq v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    move v0, v1

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ae;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-static {v2, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ae;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;F)F

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ae;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->b(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;F)F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ae;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->c(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ae;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->c(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;F)F

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ae;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->d(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;F)F

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ae;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ae;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->d(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)F

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->e(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;F)F

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ae;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ae;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->e(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)F

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->f(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;F)F

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ae;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->b(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ae;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->b(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/b;->b()V

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ae;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    sget-object v3, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;->NORMAL:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

    iput-object v3, v2, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ae;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-static {v2, v3}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->e(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;F)F

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ae;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-static {v2, v3}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->f(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;F)F

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ae;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->f(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ae;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ae;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->g(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v2, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;Z)Z

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ae;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->h(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ae;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->b(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ae;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->b(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/b;->a()V

    goto/16 :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ae;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->f(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ae;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->b(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/b;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ae;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->b(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/b;->c()V

    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ae;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-static {v2, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;Z)Z

    goto/16 :goto_1

    :cond_5
    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ae;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->b(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/b;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ae;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->b(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/b;->d()V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
