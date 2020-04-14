.class Lcom/xiaomi/hy/dj/fragment/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/hy/dj/fragment/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/hy/dj/fragment/c;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/fragment/e;->a:Lcom/xiaomi/hy/dj/fragment/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/hy/dj/e/b;->a()Lcom/xiaomi/hy/dj/e/b;

    move-result-object v0

    const/16 v1, 0xaa

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/e/b;->a(I)V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/e;->a:Lcom/xiaomi/hy/dj/fragment/c;

    iget-object v0, v0, Lcom/xiaomi/hy/dj/fragment/c;->c:Lcom/xiaomi/hy/dj/fragment/HyAlipayFragment;

    const/16 v1, 0xb9

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/fragment/HyAlipayFragment;->b(I)V

    return-void
.end method
