.class Lcom/xiaomi/hy/dj/fragment/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/hy/dj/fragment/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/hy/dj/fragment/h;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/fragment/i;->a:Lcom/xiaomi/hy/dj/fragment/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/i;->a:Lcom/xiaomi/hy/dj/fragment/h;

    iget-object v0, v0, Lcom/xiaomi/hy/dj/fragment/h;->a:Lcom/xiaomi/hy/dj/fragment/HyPayEcoFragment;

    const-string v1, "PAYECO"

    const-wide/16 v2, 0xfa0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/hy/dj/fragment/HyPayEcoFragment;->a(Ljava/lang/String;JJ)V

    return-void
.end method
