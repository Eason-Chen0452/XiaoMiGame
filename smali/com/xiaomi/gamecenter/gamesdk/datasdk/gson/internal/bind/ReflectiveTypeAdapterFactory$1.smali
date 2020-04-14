.class Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/ReflectiveTypeAdapterFactory$1;
.super Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;


# instance fields
.field final synthetic this$0:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/ReflectiveTypeAdapterFactory;

.field final synthetic val$context:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;

.field final synthetic val$field:Ljava/lang/reflect/Field;

.field final synthetic val$fieldType:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;

.field final synthetic val$isPrimitive:Z

.field final synthetic val$jsonAdapterPresent:Z

.field final synthetic val$typeAdapter:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/ReflectiveTypeAdapterFactory;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;Z)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->this$0:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/ReflectiveTypeAdapterFactory;

    iput-object p5, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$field:Ljava/lang/reflect/Field;

    iput-boolean p6, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$jsonAdapterPresent:Z

    iput-object p7, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$typeAdapter:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    iput-object p8, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$context:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;

    iput-object p9, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$fieldType:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;

    iput-boolean p10, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$isPrimitive:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method read(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$typeAdapter:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;->read(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$isPrimitive:Z

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method write(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$jsonAdapterPresent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$typeAdapter:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;->write(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$context:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$typeAdapter:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    iget-object v4, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$fieldType:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;

    invoke-virtual {v4}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    goto :goto_0
.end method

.method public writeField(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->serialized:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
