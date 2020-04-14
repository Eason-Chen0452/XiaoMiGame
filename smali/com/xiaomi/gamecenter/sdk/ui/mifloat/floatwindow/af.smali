.class final Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/af;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    const-string v0, "MiGameSDK.MiFloatView"

    const-string v1, "hideToLeft"

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/af;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;->LEFT_HIDE:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

    iput-object v1, v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

    return-void
.end method
