.class final Lcom/xiaomi/gson/internal/bind/MapTypeAdapterFactory$Adapter;
.super Lcom/xiaomi/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaomi/gson/TypeAdapter",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/gson/internal/bind/MapTypeAdapterFactory;

.field private final b:Lcom/xiaomi/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/gson/TypeAdapter",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/xiaomi/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/gson/TypeAdapter",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/xiaomi/gson/internal/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/gson/internal/ah",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaomi/gson/internal/bind/MapTypeAdapterFactory;Lcom/xiaomi/gson/Gson;Ljava/lang/reflect/Type;Lcom/xiaomi/gson/TypeAdapter;Ljava/lang/reflect/Type;Lcom/xiaomi/gson/TypeAdapter;Lcom/xiaomi/gson/internal/ah;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gson/Gson;",
            "Ljava/lang/reflect/Type;",
            "Lcom/xiaomi/gson/TypeAdapter",
            "<TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/xiaomi/gson/TypeAdapter",
            "<TV;>;",
            "Lcom/xiaomi/gson/internal/ah",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/gson/internal/bind/MapTypeAdapterFactory$Adapter;->a:Lcom/xiaomi/gson/internal/bind/MapTypeAdapterFactory;

    invoke-direct {p0}, Lcom/xiaomi/gson/TypeAdapter;-><init>()V

    new-instance v0, Lcom/xiaomi/gson/internal/bind/n;

    invoke-direct {v0, p2, p4, p3}, Lcom/xiaomi/gson/internal/bind/n;-><init>(Lcom/xiaomi/gson/Gson;Lcom/xiaomi/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/xiaomi/gson/internal/bind/MapTypeAdapterFactory$Adapter;->b:Lcom/xiaomi/gson/TypeAdapter;

    new-instance v0, Lcom/xiaomi/gson/internal/bind/n;

    invoke-direct {v0, p2, p6, p5}, Lcom/xiaomi/gson/internal/bind/n;-><init>(Lcom/xiaomi/gson/Gson;Lcom/xiaomi/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/xiaomi/gson/internal/bind/MapTypeAdapterFactory$Adapter;->c:Lcom/xiaomi/gson/TypeAdapter;

    iput-object p7, p0, Lcom/xiaomi/gson/internal/bind/MapTypeAdapterFactory$Adapter;->d:Lcom/xiaomi/gson/internal/ah;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/xiaomi/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->f()Lcom/xiaomi/gson/stream/JsonToken;

    move-result-object v1

    sget-object v0, Lcom/xiaomi/gson/stream/JsonToken;->NULL:Lcom/xiaomi/gson/stream/JsonToken;

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->j()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gson/internal/bind/MapTypeAdapterFactory$Adapter;->d:Lcom/xiaomi/gson/internal/ah;

    invoke-interface {v0}, Lcom/xiaomi/gson/internal/ah;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v2, Lcom/xiaomi/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/xiaomi/gson/stream/JsonToken;

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->a()V

    :goto_1
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->a()V

    iget-object v1, p0, Lcom/xiaomi/gson/internal/bind/MapTypeAdapterFactory$Adapter;->b:Lcom/xiaomi/gson/TypeAdapter;

    invoke-virtual {v1, p1}, Lcom/xiaomi/gson/TypeAdapter;->a(Lcom/xiaomi/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/gson/internal/bind/MapTypeAdapterFactory$Adapter;->c:Lcom/xiaomi/gson/TypeAdapter;

    invoke-virtual {v2, p1}, Lcom/xiaomi/gson/TypeAdapter;->a(Lcom/xiaomi/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/xiaomi/gson/JsonSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "duplicate key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->b()V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->b()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->c()V

    :cond_4
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/xiaomi/gson/internal/JsonReaderInternalAccess;->a:Lcom/xiaomi/gson/internal/JsonReaderInternalAccess;

    invoke-virtual {v1, p1}, Lcom/xiaomi/gson/internal/JsonReaderInternalAccess;->a(Lcom/xiaomi/gson/stream/JsonReader;)V

    iget-object v1, p0, Lcom/xiaomi/gson/internal/bind/MapTypeAdapterFactory$Adapter;->b:Lcom/xiaomi/gson/TypeAdapter;

    invoke-virtual {v1, p1}, Lcom/xiaomi/gson/TypeAdapter;->a(Lcom/xiaomi/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/gson/internal/bind/MapTypeAdapterFactory$Adapter;->c:Lcom/xiaomi/gson/TypeAdapter;

    invoke-virtual {v2, p1}, Lcom/xiaomi/gson/TypeAdapter;->a(Lcom/xiaomi/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v0, Lcom/xiaomi/gson/JsonSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "duplicate key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->d()V

    goto :goto_0
.end method

.method public final synthetic a(Lcom/xiaomi/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 8

    const/4 v2, 0x0

    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonWriter;->f()Lcom/xiaomi/gson/stream/JsonWriter;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gson/internal/bind/MapTypeAdapterFactory$Adapter;->a:Lcom/xiaomi/gson/internal/bind/MapTypeAdapterFactory;

    iget-boolean v0, v0, Lcom/xiaomi/gson/internal/bind/MapTypeAdapterFactory;->a:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonWriter;->d()Lcom/xiaomi/gson/stream/JsonWriter;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/xiaomi/gson/stream/JsonWriter;->a(Ljava/lang/String;)Lcom/xiaomi/gson/stream/JsonWriter;

    iget-object v2, p0, Lcom/xiaomi/gson/internal/bind/MapTypeAdapterFactory$Adapter;->c:Lcom/xiaomi/gson/TypeAdapter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/xiaomi/gson/TypeAdapter;->a(Lcom/xiaomi/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonWriter;->e()Lcom/xiaomi/gson/stream/JsonWriter;

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v6, p0, Lcom/xiaomi/gson/internal/bind/MapTypeAdapterFactory$Adapter;->b:Lcom/xiaomi/gson/TypeAdapter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/xiaomi/gson/TypeAdapter;->a(Ljava/lang/Object;)Lcom/xiaomi/gson/JsonElement;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    instance-of v0, v6, Lcom/xiaomi/gson/JsonArray;

    if-nez v0, :cond_3

    instance-of v0, v6, Lcom/xiaomi/gson/JsonObject;

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_3
    or-int/2addr v0, v1

    move v1, v0

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonWriter;->b()Lcom/xiaomi/gson/stream/JsonWriter;

    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonWriter;->b()Lcom/xiaomi/gson/stream/JsonWriter;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gson/JsonElement;

    invoke-static {v0, p1}, Lcom/xiaomi/gson/internal/aj;->a(Lcom/xiaomi/gson/JsonElement;Lcom/xiaomi/gson/stream/JsonWriter;)V

    iget-object v0, p0, Lcom/xiaomi/gson/internal/bind/MapTypeAdapterFactory$Adapter;->c:Lcom/xiaomi/gson/TypeAdapter;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/gson/TypeAdapter;->a(Lcom/xiaomi/gson/stream/JsonWriter;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonWriter;->c()Lcom/xiaomi/gson/stream/JsonWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonWriter;->c()Lcom/xiaomi/gson/stream/JsonWriter;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonWriter;->d()Lcom/xiaomi/gson/stream/JsonWriter;

    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_d

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gson/JsonElement;

    instance-of v1, v0, Lcom/xiaomi/gson/JsonPrimitive;

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/xiaomi/gson/JsonElement;->g()Lcom/xiaomi/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gson/JsonPrimitive;->i()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/xiaomi/gson/JsonPrimitive;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {p1, v0}, Lcom/xiaomi/gson/stream/JsonWriter;->a(Ljava/lang/String;)Lcom/xiaomi/gson/stream/JsonWriter;

    iget-object v0, p0, Lcom/xiaomi/gson/internal/bind/MapTypeAdapterFactory$Adapter;->c:Lcom/xiaomi/gson/TypeAdapter;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/gson/TypeAdapter;->a(Lcom/xiaomi/gson/stream/JsonWriter;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {v0}, Lcom/xiaomi/gson/JsonPrimitive;->h()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/xiaomi/gson/JsonPrimitive;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_9
    invoke-virtual {v0}, Lcom/xiaomi/gson/JsonPrimitive;->j()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/xiaomi/gson/JsonPrimitive;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_b
    instance-of v0, v0, Lcom/xiaomi/gson/JsonNull;

    if-eqz v0, :cond_c

    const-string v0, "null"

    goto :goto_6

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_d
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonWriter;->e()Lcom/xiaomi/gson/stream/JsonWriter;

    goto/16 :goto_0
.end method
