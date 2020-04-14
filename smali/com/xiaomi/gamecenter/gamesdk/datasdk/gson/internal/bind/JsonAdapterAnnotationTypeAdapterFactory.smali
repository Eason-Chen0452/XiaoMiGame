.class public final Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;


# instance fields
.field private final constructorConstructor:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ConstructorConstructor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->constructorConstructor:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ConstructorConstructor;

    return-void
.end method


# virtual methods
.method public final create(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/annotations/JsonAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/annotations/JsonAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->constructorConstructor:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ConstructorConstructor;

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->getTypeAdapter(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ConstructorConstructor;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/annotations/JsonAdapter;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method final getTypeAdapter(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ConstructorConstructor;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/annotations/JsonAdapter;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ConstructorConstructor;",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken",
            "<*>;",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/annotations/JsonAdapter;",
            ")",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter",
            "<*>;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-interface {p4}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/annotations/JsonAdapter;->value()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ConstructorConstructor;->get(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ObjectConstructor;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {p4}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/annotations/JsonAdapter;->nullSafe()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;->nullSafe()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    instance-of v1, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    invoke-interface {v0, p2, p3}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;->create(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonSerializer;

    if-nez v1, :cond_3

    instance-of v1, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonDeserializer;

    if-eqz v1, :cond_6

    :cond_3
    instance-of v1, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonSerializer;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonSerializer;

    :goto_1
    instance-of v2, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonDeserializer;

    if-eqz v2, :cond_5

    check-cast v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonDeserializer;

    move-object v2, v0

    :goto_2
    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter;

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter;-><init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonSerializer;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonDeserializer;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;)V

    goto :goto_0

    :cond_4
    move-object v1, v5

    goto :goto_1

    :cond_5
    move-object v2, v5

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid attempt to bind an instance of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " as a @JsonAdapter for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
