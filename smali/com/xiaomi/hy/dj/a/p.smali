.class Lcom/xiaomi/hy/dj/a/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/hy/dj/a/l;


# direct methods
.method constructor <init>(Lcom/xiaomi/hy/dj/a/l;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/a/p;->a:Lcom/xiaomi/hy/dj/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/a/p;->a:Lcom/xiaomi/hy/dj/a/l;

    iget-object v0, v0, Lcom/xiaomi/hy/dj/a/l;->e:Lcom/xiaomi/hy/dj/a/a;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/a/a;->b()V

    return-void
.end method
