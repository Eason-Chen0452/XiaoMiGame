.class Lcom/xiaomi/hy/dj/fragment/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/hy/dj/fragment/u;


# direct methods
.method constructor <init>(Lcom/xiaomi/hy/dj/fragment/u;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/fragment/v;->a:Lcom/xiaomi/hy/dj/fragment/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/v;->a:Lcom/xiaomi/hy/dj/fragment/u;

    iget-object v0, v0, Lcom/xiaomi/hy/dj/fragment/u;->b:Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment$a;

    iget-object v0, v0, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment$a;->a:Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;->b(I)V

    return-void
.end method
