.class Lcom/xiaomi/hy/dj/fragment/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/hy/dj/fragment/k;


# direct methods
.method constructor <init>(Lcom/xiaomi/hy/dj/fragment/k;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/fragment/l;->a:Lcom/xiaomi/hy/dj/fragment/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/l;->a:Lcom/xiaomi/hy/dj/fragment/k;

    iget-object v0, v0, Lcom/xiaomi/hy/dj/fragment/k;->c:Lcom/xiaomi/hy/dj/fragment/HyQQWapFragment;

    const/16 v1, 0xb7

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/fragment/HyQQWapFragment;->b(I)V

    return-void
.end method
