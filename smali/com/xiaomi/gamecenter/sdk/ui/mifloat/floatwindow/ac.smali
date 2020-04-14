.class final Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ac;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final makeView()Landroid/view/View;
    .locals 3

    const/4 v2, -0x2

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ac;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method
