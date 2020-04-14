.class final Lcom/xiaomi/gamecenter/sdk/ui/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/ui/MiButton;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/MiButton;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/b;->a:Lcom/xiaomi/gamecenter/sdk/ui/MiButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/b;->a:Lcom/xiaomi/gamecenter/sdk/ui/MiButton;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/MiButton;->a()Landroid/graphics/LightingColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/b;->a:Lcom/xiaomi/gamecenter/sdk/ui/MiButton;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/b;->a:Lcom/xiaomi/gamecenter/sdk/ui/MiButton;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/b;->a:Lcom/xiaomi/gamecenter/sdk/ui/MiButton;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/b;->a:Lcom/xiaomi/gamecenter/sdk/ui/MiButton;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/b;->a:Lcom/xiaomi/gamecenter/sdk/ui/MiButton;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
