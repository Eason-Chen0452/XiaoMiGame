.class public Lcom/xiaomi/passport/utils/SensorHelper;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/utils/SensorHelper$a;
    }
.end annotation


# static fields
.field private static e:Landroid/os/HandlerThread;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/hardware/SensorManager;

.field private c:I

.field private d:Landroid/os/Handler;

.field private f:Z

.field private g:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "sensor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/passport/utils/SensorHelper;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SensorHelper"

    iput-object v0, p0, Lcom/xiaomi/passport/utils/SensorHelper;->a:Ljava/lang/String;

    const v0, 0xc350

    iput v0, p0, Lcom/xiaomi/passport/utils/SensorHelper;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/passport/utils/SensorHelper;->f:Z

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/utils/SensorHelper;->g:Lorg/json/JSONArray;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/xiaomi/passport/utils/SensorHelper;->b:Landroid/hardware/SensorManager;

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/xiaomi/passport/utils/SensorHelper;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/passport/utils/SensorHelper;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/passport/utils/SensorHelper;Lcom/xiaomi/passport/utils/SensorHelper$a;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/passport/utils/SensorHelper;->g:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/xiaomi/passport/utils/SensorHelper$a;->a()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/utils/SensorHelper;->d:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/passport/utils/a;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/passport/utils/a;-><init>(Lcom/xiaomi/passport/utils/SensorHelper;Landroid/hardware/SensorEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
