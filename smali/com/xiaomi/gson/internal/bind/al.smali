.class final Lcom/xiaomi/gson/internal/bind/al;
.super Lcom/xiaomi/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/gson/TypeAdapter",
        "<",
        "Lcom/xiaomi/gson/JsonElement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/gson/TypeAdapter;-><init>()V

    return-void
.end method

.method private a(Lcom/xiaomi/gson/stream/JsonWriter;Lcom/xiaomi/gson/JsonElement;)V
    .locals 3

    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/xiaomi/gson/JsonNull;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonWriter;->f()Lcom/xiaomi/gson/stream/JsonWriter;

    :goto_0
    return-void

    :cond_1
    instance-of v0, p2, Lcom/xiaomi/gson/JsonPrimitive;

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/xiaomi/gson/JsonElement;->g()Lcom/xiaomi/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gson/JsonPrimitive;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/xiaomi/gson/JsonPrimitive;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/gson/stream/JsonWriter;->a(Ljava/lang/Number;)Lcom/xiaomi/gson/stream/JsonWriter;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/xiaomi/gson/JsonPrimitive;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/xiaomi/gson/JsonPrimitive;->f()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/gson/stream/JsonWriter;->a(Z)Lcom/xiaomi/gson/stream/JsonWriter;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/xiaomi/gson/JsonPrimitive;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/gson/stream/JsonWriter;->b(Ljava/lang/String;)Lcom/xiaomi/gson/stream/JsonWriter;

    goto :goto_0

    :cond_4
    instance-of v0, p2, Lcom/xiaomi/gson/JsonArray;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonWriter;->b()Lcom/xiaomi/gson/stream/JsonWriter;

    instance-of v0, p2, Lcom/xiaomi/gson/JsonArray;

    if-eqz v0, :cond_5

    check-cast p2, Lcom/xiaomi/gson/JsonArray;

    invoke-virtual {p2}, Lcom/xiaomi/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gson/JsonElement;

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/gson/internal/bind/al;->a(Lcom/xiaomi/gson/stream/JsonWriter;Lcom/xiaomi/gson/JsonElement;)V

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This is not a JSON Array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonWriter;->c()Lcom/xiaomi/gson/stream/JsonWriter;

    goto :goto_0

    :cond_7
    instance-of v0, p2, Lcom/xiaomi/gson/JsonObject;

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonWriter;->d()Lcom/xiaomi/gson/stream/JsonWriter;

    instance-of v0, p2, Lcom/xiaomi/gson/JsonObject;

    if-eqz v0, :cond_8

    check-cast p2, Lcom/xiaomi/gson/JsonObject;

    invoke-virtual {p2}, Lcom/xiaomi/gson/JsonObject;->h()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/xiaomi/gson/stream/JsonWriter;->a(Ljava/lang/String;)Lcom/xiaomi/gson/stream/JsonWriter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gson/JsonElement;

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/gson/internal/bind/al;->a(Lcom/xiaomi/gson/stream/JsonWriter;Lcom/xiaomi/gson/JsonElement;)V

    goto :goto_2

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a JSON Object: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonWriter;->e()Lcom/xiaomi/gson/stream/JsonWriter;

    goto/16 :goto_0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t write "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Lcom/xiaomi/gson/stream/JsonReader;)Lcom/xiaomi/gson/JsonElement;
    .locals 3

    sget-object v0, Lcom/xiaomi/gson/internal/bind/at;->a:[I

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->f()Lcom/xiaomi/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/gson/stream/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/xiaomi/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/xiaomi/gson/JsonPrimitive;

    new-instance v2, Lcom/xiaomi/gson/internal/LazilyParsedNumber;

    invoke-direct {v2, v1}, Lcom/xiaomi/gson/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/xiaomi/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/xiaomi/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->j()V

    sget-object v0, Lcom/xiaomi/gson/JsonNull;->a:Lcom/xiaomi/gson/JsonNull;

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/xiaomi/gson/JsonArray;

    invoke-direct {v0}, Lcom/xiaomi/gson/JsonArray;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->a()V

    :goto_1
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaomi/gson/internal/bind/al;->b(Lcom/xiaomi/gson/stream/JsonReader;)Lcom/xiaomi/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gson/JsonArray;->a(Lcom/xiaomi/gson/JsonElement;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->b()V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/xiaomi/gson/JsonObject;

    invoke-direct {v0}, Lcom/xiaomi/gson/JsonObject;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->c()V

    :goto_2
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/xiaomi/gson/internal/bind/al;->b(Lcom/xiaomi/gson/stream/JsonReader;)Lcom/xiaomi/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/gson/JsonObject;->a(Ljava/lang/String;Lcom/xiaomi/gson/JsonElement;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->d()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final synthetic a(Lcom/xiaomi/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/gson/internal/bind/al;->b(Lcom/xiaomi/gson/stream/JsonReader;)Lcom/xiaomi/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/xiaomi/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/xiaomi/gson/JsonElement;

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/gson/internal/bind/al;->a(Lcom/xiaomi/gson/stream/JsonWriter;Lcom/xiaomi/gson/JsonElement;)V

    return-void
.end method
