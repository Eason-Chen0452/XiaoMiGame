.class final Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/c;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    const/4 v5, 0x1

    const/high16 v4, 0x41980000    # 19.0f

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v5, :cond_2

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    aget v2, v0, v5

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/c;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/c;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v0, v5}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/c;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/c;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/d;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/d;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/e;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/e;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/c;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
