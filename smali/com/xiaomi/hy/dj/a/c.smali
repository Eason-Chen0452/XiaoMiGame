.class final Lcom/xiaomi/hy/dj/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/hy/dj/a/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/hy/dj/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/a/c;->a:Lcom/xiaomi/hy/dj/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/a/c;->a:Lcom/xiaomi/hy/dj/a/a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/hy/dj/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/a/c;->a:Lcom/xiaomi/hy/dj/a/a;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/a/a;->b()V

    return-void
.end method

.method public final synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaomi/hy/dj/a/c;->a(Ljava/lang/String;)V

    return-void
.end method
