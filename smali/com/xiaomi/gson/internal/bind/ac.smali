.class final Lcom/xiaomi/gson/internal/bind/ac;
.super Lcom/xiaomi/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/gson/TypeAdapter",
        "<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/xiaomi/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->f()Lcom/xiaomi/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/gson/stream/JsonToken;->NULL:Lcom/xiaomi/gson/stream/JsonToken;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->j()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final synthetic a(Lcom/xiaomi/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Ljava/net/URL;

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/xiaomi/gson/stream/JsonWriter;->b(Ljava/lang/String;)Lcom/xiaomi/gson/stream/JsonWriter;

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
