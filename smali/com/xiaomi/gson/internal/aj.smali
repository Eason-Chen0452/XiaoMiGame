.class public final Lcom/xiaomi/gson/internal/aj;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/xiaomi/gson/stream/JsonReader;)Lcom/xiaomi/gson/JsonElement;
    .locals 2

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/gson/stream/JsonReader;->f()Lcom/xiaomi/gson/stream/JsonToken;

    const/4 v1, 0x0

    sget-object v0, Lcom/xiaomi/gson/internal/bind/o;->X:Lcom/xiaomi/gson/TypeAdapter;

    invoke-virtual {v0, p0}, Lcom/xiaomi/gson/TypeAdapter;->a(Lcom/xiaomi/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gson/JsonElement;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/xiaomi/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    if-eqz v1, :cond_0

    sget-object v0, Lcom/xiaomi/gson/JsonNull;->a:Lcom/xiaomi/gson/JsonNull;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/xiaomi/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/xiaomi/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/xiaomi/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/xiaomi/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/xiaomi/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/xiaomi/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lcom/xiaomi/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/xiaomi/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Lcom/xiaomi/gson/JsonElement;Lcom/xiaomi/gson/stream/JsonWriter;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/gson/internal/bind/o;->X:Lcom/xiaomi/gson/TypeAdapter;

    invoke-virtual {v0, p1, p0}, Lcom/xiaomi/gson/TypeAdapter;->a(Lcom/xiaomi/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
