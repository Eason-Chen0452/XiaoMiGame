.class Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/LinkedTreeMap$EntrySet$1;
.super Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/LinkedTreeMap",
        "<TK;TV;>.",
        "LinkedTreeMapIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/LinkedTreeMap$EntrySet;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/LinkedTreeMap$EntrySet;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/LinkedTreeMap$EntrySet$1;->this$1:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/LinkedTreeMap$EntrySet;

    iget-object v0, p1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/LinkedTreeMap$EntrySet;->this$0:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/LinkedTreeMap;

    invoke-direct {p0, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;-><init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/LinkedTreeMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/LinkedTreeMap$EntrySet$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/LinkedTreeMap$EntrySet$1;->nextNode()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    return-object v0
.end method
