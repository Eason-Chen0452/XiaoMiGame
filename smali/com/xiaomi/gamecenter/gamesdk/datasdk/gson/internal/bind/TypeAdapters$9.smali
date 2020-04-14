.class final Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters$9;
.super Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter",
        "<",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
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

    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters$9;->read(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    return-object v0
.end method

.method public final read(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;->nextBoolean()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    return-object v0
.end method

.method public final bridge synthetic write(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters$9;->write(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method

.method public final write(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;->value(Z)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;

    return-void
.end method
