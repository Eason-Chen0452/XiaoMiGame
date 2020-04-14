.class final Lcom/xiaomi/hy/dj/a/k;
.super Lcom/android/volley/toolbox/StringRequest;


# instance fields
.field final synthetic a:Ljava/util/Map;


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/Map;)V
    .locals 0

    iput-object p5, p0, Lcom/xiaomi/hy/dj/a/k;->a:Ljava/util/Map;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected final getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/hy/dj/a/k;->a:Ljava/util/Map;

    return-object v0
.end method
