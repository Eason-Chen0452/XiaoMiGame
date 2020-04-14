.class Lcom/xiaomi/hy/dj/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/hy/dj/a/l;


# direct methods
.method constructor <init>(Lcom/xiaomi/hy/dj/a/l;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/a/m;->b:Lcom/xiaomi/hy/dj/a/l;

    iput-object p2, p0, Lcom/xiaomi/hy/dj/a/m;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/hy/dj/a/m;->b:Lcom/xiaomi/hy/dj/a/l;

    iget-object v0, v0, Lcom/xiaomi/hy/dj/a/l;->e:Lcom/xiaomi/hy/dj/a/a;

    iget-object v1, p0, Lcom/xiaomi/hy/dj/a/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/a/a;->a(Ljava/lang/String;)V

    return-void
.end method
