.class public abstract Lcom/xiaomi/gamecenter/sdk/gam/MiResponseListener;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract onResponseStatus(ILjava/lang/String;)V
.end method

.method public sendResultCode(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/gam/c;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/gamecenter/sdk/gam/c;-><init>(Lcom/xiaomi/gamecenter/sdk/gam/MiResponseListener;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
