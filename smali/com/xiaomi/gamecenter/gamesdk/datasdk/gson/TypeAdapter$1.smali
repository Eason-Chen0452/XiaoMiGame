.class Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter$1;
.super Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter$1;->this$0:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;->peek()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonToken;->NULL:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;->nextNull()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter$1;->this$0:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;->read(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public write(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;->nullValue()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter$1;->this$0:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;->write(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_0
.end method
