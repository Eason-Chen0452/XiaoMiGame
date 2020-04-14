.class final Lcom/xiaomi/passport/utils/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/hardware/SensorEvent;

.field final synthetic b:Lcom/xiaomi/passport/utils/SensorHelper;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/utils/SensorHelper;Landroid/hardware/SensorEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/utils/a;->b:Lcom/xiaomi/passport/utils/SensorHelper;

    iput-object p2, p0, Lcom/xiaomi/passport/utils/a;->a:Landroid/hardware/SensorEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/passport/utils/a;->b:Lcom/xiaomi/passport/utils/SensorHelper;

    new-instance v1, Lcom/xiaomi/passport/utils/SensorHelper$a;

    iget-object v2, p0, Lcom/xiaomi/passport/utils/a;->b:Lcom/xiaomi/passport/utils/SensorHelper;

    iget-object v3, p0, Lcom/xiaomi/passport/utils/a;->a:Landroid/hardware/SensorEvent;

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/passport/utils/SensorHelper$a;-><init>(Lcom/xiaomi/passport/utils/SensorHelper;Landroid/hardware/SensorEvent;)V

    invoke-static {v0, v1}, Lcom/xiaomi/passport/utils/SensorHelper;->a(Lcom/xiaomi/passport/utils/SensorHelper;Lcom/xiaomi/passport/utils/SensorHelper$a;)V

    return-void
.end method
