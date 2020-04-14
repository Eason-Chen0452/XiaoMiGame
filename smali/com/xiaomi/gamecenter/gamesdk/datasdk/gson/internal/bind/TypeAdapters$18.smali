.class final Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters$18;
.super Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter",
        "<",
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic read(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters$18;->read(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public final read(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;)Ljava/math/BigInteger;
    .locals 2

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;->peek()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonToken;->NULL:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;->nextNull()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final bridge synthetic write(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/math/BigInteger;

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters$18;->write(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;Ljava/math/BigInteger;)V

    return-void
.end method

.method public final write(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;Ljava/math/BigInteger;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;

    return-void
.end method
