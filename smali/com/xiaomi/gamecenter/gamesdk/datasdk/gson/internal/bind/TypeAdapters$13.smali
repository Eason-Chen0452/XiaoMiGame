.class final Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters$13;
.super Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter",
        "<",
        "Ljava/lang/Number;",
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
.method public final read(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;)Ljava/lang/Number;
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
    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public final bridge synthetic read(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters$13;->read(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public final write(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;Ljava/lang/Number;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;

    return-void
.end method

.method public final bridge synthetic write(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters$13;->write(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;Ljava/lang/Number;)V

    return-void
.end method
