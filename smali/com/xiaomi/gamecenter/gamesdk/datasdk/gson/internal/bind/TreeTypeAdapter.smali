.class public final Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter;
.super Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;,
        Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final context:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter",
            "<TT;>.GsonContextImpl;"
        }
    .end annotation
.end field

.field private delegate:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final deserializer:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonDeserializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field final gson:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;

.field private final serializer:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonSerializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final skipPast:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

.field private final typeToken:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonSerializer;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonDeserializer;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonSerializer",
            "<TT;>;",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonDeserializer",
            "<TT;>;",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken",
            "<TT;>;",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;-><init>()V

    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;-><init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter$1;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter;->context:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    iput-object p1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter;->serializer:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonSerializer;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter;->deserializer:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonDeserializer;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter;->gson:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;

    iput-object p4, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter;->typeToken:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;

    iput-object p5, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter;->skipPast:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    return-void
.end method

.method private delegate()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter;->delegate:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter;->gson:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter;->skipPast:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter;->typeToken:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->getDelegateAdapter(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter;->delegate:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    goto :goto_0
.end method

.method public static newFactory(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-object v0
.end method

.method public static newFactoryWithMatchRawType(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v0, v2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public final read(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter;->deserializer:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonDeserializer;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter;->delegate()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;->read(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Streams;->parse(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter;->deserializer:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonDeserializer;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter;->typeToken:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter;->context:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    invoke-interface {v1, v0, v2, v3}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonDeserializer;->deserialize(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final write(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter;->serializer:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonSerializer;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter;->delegate()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;->write(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;->nullValue()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter;->serializer:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonSerializer;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter;->typeToken:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter;->context:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    invoke-interface {v0, p2, v1, v2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonSerializer;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonSerializationContext;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Streams;->write(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;)V

    goto :goto_0
.end method
