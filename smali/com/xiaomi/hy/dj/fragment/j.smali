.class Lcom/xiaomi/hy/dj/fragment/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/hy/dj/fragment/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/hy/dj/fragment/h;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/fragment/j;->a:Lcom/xiaomi/hy/dj/fragment/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/16 v1, 0xbd

    invoke-static {}, Lcom/xiaomi/hy/dj/e/b;->a()Lcom/xiaomi/hy/dj/e/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/e/b;->a(I)V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/j;->a:Lcom/xiaomi/hy/dj/fragment/h;

    iget-object v0, v0, Lcom/xiaomi/hy/dj/fragment/h;->a:Lcom/xiaomi/hy/dj/fragment/HyPayEcoFragment;

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/fragment/HyPayEcoFragment;->b(I)V

    return-void
.end method
