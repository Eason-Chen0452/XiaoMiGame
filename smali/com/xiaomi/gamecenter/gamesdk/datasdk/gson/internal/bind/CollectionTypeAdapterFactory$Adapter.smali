.class final Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;
.super Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/CollectionTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter",
        "<",
        "Ljava/util/Collection",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private final constructor:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ObjectConstructor",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private final elementTypeAdapter:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;Ljava/lang/reflect/Type;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ObjectConstructor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;",
            "Ljava/lang/reflect/Type;",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter",
            "<TE;>;",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ObjectConstructor",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;-><init>()V

    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    invoke-direct {v0, p1, p3, p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->elementTypeAdapter:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    iput-object p4, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->constructor:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ObjectConstructor;

    return-void
.end method


# virtual methods
.method public final bridge synthetic read(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->read(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final read(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;",
            ")",
            "Ljava/util/Collection",
            "<TE;>;"
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
    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->constructor:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ObjectConstructor;

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;->beginArray()V

    :goto_1
    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->elementTypeAdapter:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    invoke-virtual {v1, p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;->read(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;->endArray()V

    goto :goto_0
.end method

.method public final bridge synthetic write(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->write(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;Ljava/util/Collection;)V

    return-void
.end method

.method public final write(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;->nullValue()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;->beginArray()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->elementTypeAdapter:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    invoke-virtual {v2, p1, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;->write(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;->endArray()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;

    goto :goto_0
.end method
