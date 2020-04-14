.class final Lcom/xiaomi/gamecenter/channel/writer/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/gamecenter/channel/writer/PayloadWriter$a;


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/gamecenter/channel/writer/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Lcom/xiaomi/gamecenter/channel/writer/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Lcom/xiaomi/gamecenter/channel/writer/a;"
        }
    .end annotation

    new-instance v2, Lcom/xiaomi/gamecenter/channel/writer/a;

    invoke-direct {v2}, Lcom/xiaomi/gamecenter/channel/writer/a;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v4, p0, Lcom/xiaomi/gamecenter/channel/writer/e;->a:I

    if-eq v1, v4, :cond_0

    new-instance v4, Lcom/xiaomi/gamecenter/channel/writer/b;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-direct {v4, v1, v0}, Lcom/xiaomi/gamecenter/channel/writer/b;-><init>(ILjava/nio/ByteBuffer;)V

    invoke-virtual {v2, v4}, Lcom/xiaomi/gamecenter/channel/writer/a;->a(Lcom/xiaomi/gamecenter/channel/writer/b;)V

    goto :goto_0

    :cond_1
    return-object v2
.end method
