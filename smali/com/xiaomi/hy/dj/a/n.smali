.class Lcom/xiaomi/hy/dj/a/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/hy/dj/a/l;


# direct methods
.method constructor <init>(Lcom/xiaomi/hy/dj/a/l;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/a/n;->a:Lcom/xiaomi/hy/dj/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/hy/dj/a/n;->a:Lcom/xiaomi/hy/dj/a/l;

    iget-object v0, v0, Lcom/xiaomi/hy/dj/a/l;->e:Lcom/xiaomi/hy/dj/a/a;

    new-instance v1, Lcom/android/volley/VolleyError;

    const-string v2, "milink\u7f51\u7edc\u9519\u8bef"

    invoke-direct {v1, v2}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/a/a;->a(Lcom/android/volley/VolleyError;)V

    return-void
.end method
