.class final Lcom/xiaomi/hy/dj/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/hy/dj/a/a;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/hy/dj/a/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/a/h;->a:Lcom/xiaomi/hy/dj/a/a;

    iput-object p2, p0, Lcom/xiaomi/hy/dj/a/h;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/hy/dj/a/h;->a:Lcom/xiaomi/hy/dj/a/a;

    iget-object v1, p0, Lcom/xiaomi/hy/dj/a/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/a/a;->a(Ljava/lang/String;)V

    return-void
.end method
