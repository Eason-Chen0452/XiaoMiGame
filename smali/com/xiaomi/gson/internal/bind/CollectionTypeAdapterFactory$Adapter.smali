.class final Lcom/xiaomi/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;
.super Lcom/xiaomi/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaomi/gson/TypeAdapter",
        "<",
        "Ljava/util/Collection",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/xiaomi/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/gson/TypeAdapter",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/xiaomi/gson/internal/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/gson/internal/ah",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaomi/gson/Gson;Ljava/lang/reflect/Type;Lcom/xiaomi/gson/TypeAdapter;Lcom/xiaomi/gson/internal/ah;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gson/Gson;",
            "Ljava/lang/reflect/Type;",
            "Lcom/xiaomi/gson/TypeAdapter",
            "<TE;>;",
            "Lcom/xiaomi/gson/internal/ah",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/gson/TypeAdapter;-><init>()V

    new-instance v0, Lcom/xiaomi/gson/internal/bind/n;

    invoke-direct {v0, p1, p3, p2}, Lcom/xiaomi/gson/internal/bind/n;-><init>(Lcom/xiaomi/gson/Gson;Lcom/xiaomi/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/xiaomi/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->a:Lcom/xiaomi/gson/TypeAdapter;

    iput-object p4, p0, Lcom/xiaomi/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->b:Lcom/xiaomi/gson/internal/ah;

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
    iget-object v0, p0, Lcom/xiaomi/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->b:Lcom/xiaomi/gson/internal/ah;

    invoke-interface {v0}, Lcom/xiaomi/gson/internal/ah;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->a()V

    :goto_1
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->a:Lcom/xiaomi/gson/TypeAdapter;

    invoke-virtual {v1, p1}, Lcom/xiaomi/gson/TypeAdapter;->a(Lcom/xiaomi/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->b()V

    goto :goto_0
.end method

.method public final synthetic a(Lcom/xiaomi/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Ljava/util/Collection;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonWriter;->f()Lcom/xiaomi/gson/stream/JsonWriter;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonWriter;->b()Lcom/xiaomi/gson/stream/JsonWriter;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->a:Lcom/xiaomi/gson/TypeAdapter;

    invoke-virtual {v2, p1, v1}, Lcom/xiaomi/gson/TypeAdapter;->a(Lcom/xiaomi/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonWriter;->c()Lcom/xiaomi/gson/stream/JsonWriter;

    goto :goto_0
.end method
