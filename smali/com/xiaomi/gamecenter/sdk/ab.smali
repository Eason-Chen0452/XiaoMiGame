.class final Lcom/xiaomi/gamecenter/sdk/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaomi/gamecenter/sdk/aa;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/aa;I)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ab;->b:Lcom/xiaomi/gamecenter/sdk/aa;

    iput p2, p0, Lcom/xiaomi/gamecenter/sdk/ab;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ab;->b:Lcom/xiaomi/gamecenter/sdk/aa;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/aa;->b:Lcom/xiaomi/gamecenter/sdk/OnExitListner;

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ab;->a:I

    invoke-interface {v0, v1}, Lcom/xiaomi/gamecenter/sdk/OnExitListner;->onExit(I)V

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/ab;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->j()V

    :cond_0
    return-void
.end method
