.class final Lcom/xiaomi/hy/dj/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/hy/dj/a/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/hy/dj/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/a/j;->a:Lcom/xiaomi/hy/dj/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/a/j;->a:Lcom/xiaomi/hy/dj/a/a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/hy/dj/a/a;->a(Lcom/android/volley/VolleyError;)V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/a/j;->a:Lcom/xiaomi/hy/dj/a/a;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/a/a;->b()V

    return-void
.end method
