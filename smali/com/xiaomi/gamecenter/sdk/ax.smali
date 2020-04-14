.class final Lcom/xiaomi/gamecenter/sdk/ax;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;I)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ax;->a:Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;

    iput p2, p0, Lcom/xiaomi/gamecenter/sdk/ax;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->setTouch(Z)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ax;->a:Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ax;->b:I

    invoke-interface {v0, v1}, Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;->finishPayProcess(I)V

    return-void
.end method
