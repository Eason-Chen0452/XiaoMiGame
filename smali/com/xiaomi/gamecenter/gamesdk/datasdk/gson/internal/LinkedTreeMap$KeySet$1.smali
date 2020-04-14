.class Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/LinkedTreeMap$KeySet$1;
.super Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/LinkedTreeMap",
        "<TK;TV;>.",
        "LinkedTreeMapIterator",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/LinkedTreeMap$KeySet;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/LinkedTreeMap$KeySet;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/LinkedTreeMap$KeySet$1;->this$1:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/LinkedTreeMap$KeySet;

    iget-object v0, p1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/LinkedTreeMap$KeySet;->this$0:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/LinkedTreeMap;

    invoke-direct {p0, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;-><init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/LinkedTreeMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/LinkedTreeMap$KeySet$1;->nextNode()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method
