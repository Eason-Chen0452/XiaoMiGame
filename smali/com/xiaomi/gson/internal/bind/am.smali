.class final Lcom/xiaomi/gson/internal/bind/am;
.super Lcom/xiaomi/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/gson/TypeAdapter",
        "<",
        "Ljava/lang/Boolean;",
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
    .locals 2

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->f()Lcom/xiaomi/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/gson/stream/JsonToken;->NULL:Lcom/xiaomi/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->j()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->f()Lcom/xiaomi/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/gson/stream/JsonToken;->STRING:Lcom/xiaomi/gson/stream/JsonToken;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public final bridge synthetic a(Lcom/xiaomi/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/xiaomi/gson/stream/JsonWriter;->a(Ljava/lang/Boolean;)Lcom/xiaomi/gson/stream/JsonWriter;

    return-void
.end method
