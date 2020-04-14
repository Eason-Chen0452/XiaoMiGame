.class final Lcom/xiaomi/gson/internal/bind/h;
.super Lcom/xiaomi/gson/internal/bind/j;


# instance fields
.field final a:Lcom/xiaomi/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/gson/TypeAdapter",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/xiaomi/gson/Gson;

.field final synthetic c:Ljava/lang/reflect/Field;

.field final synthetic d:Lcom/xiaomi/gamecenter/sdk/br;

.field final synthetic e:Z

.field final synthetic f:Lcom/xiaomi/gson/internal/bind/ReflectiveTypeAdapterFactory;


# direct methods
.method constructor <init>(Lcom/xiaomi/gson/internal/bind/ReflectiveTypeAdapterFactory;Ljava/lang/String;ZZLcom/xiaomi/gson/Gson;Ljava/lang/reflect/Field;Lcom/xiaomi/gamecenter/sdk/br;Z)V
    .locals 4

    iput-object p1, p0, Lcom/xiaomi/gson/internal/bind/h;->f:Lcom/xiaomi/gson/internal/bind/ReflectiveTypeAdapterFactory;

    iput-object p5, p0, Lcom/xiaomi/gson/internal/bind/h;->b:Lcom/xiaomi/gson/Gson;

    iput-object p6, p0, Lcom/xiaomi/gson/internal/bind/h;->c:Ljava/lang/reflect/Field;

    iput-object p7, p0, Lcom/xiaomi/gson/internal/bind/h;->d:Lcom/xiaomi/gamecenter/sdk/br;

    iput-boolean p8, p0, Lcom/xiaomi/gson/internal/bind/h;->e:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/xiaomi/gson/internal/bind/j;-><init>(Ljava/lang/String;ZZ)V

    iget-object v0, p0, Lcom/xiaomi/gson/internal/bind/h;->f:Lcom/xiaomi/gson/internal/bind/ReflectiveTypeAdapterFactory;

    iget-object v1, p0, Lcom/xiaomi/gson/internal/bind/h;->b:Lcom/xiaomi/gson/Gson;

    iget-object v2, p0, Lcom/xiaomi/gson/internal/bind/h;->c:Ljava/lang/reflect/Field;

    iget-object v3, p0, Lcom/xiaomi/gson/internal/bind/h;->d:Lcom/xiaomi/gamecenter/sdk/br;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/gson/internal/bind/ReflectiveTypeAdapterFactory;->a(Lcom/xiaomi/gson/Gson;Ljava/lang/reflect/Field;Lcom/xiaomi/gamecenter/sdk/br;)Lcom/xiaomi/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gson/internal/bind/h;->a:Lcom/xiaomi/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method final a(Lcom/xiaomi/gson/stream/JsonReader;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gson/internal/bind/h;->a:Lcom/xiaomi/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/xiaomi/gson/TypeAdapter;->a(Lcom/xiaomi/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/xiaomi/gson/internal/bind/h;->e:Z

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/gson/internal/bind/h;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method final a(Lcom/xiaomi/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/gson/internal/bind/h;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/gson/internal/bind/n;

    iget-object v2, p0, Lcom/xiaomi/gson/internal/bind/h;->b:Lcom/xiaomi/gson/Gson;

    iget-object v3, p0, Lcom/xiaomi/gson/internal/bind/h;->a:Lcom/xiaomi/gson/TypeAdapter;

    iget-object v4, p0, Lcom/xiaomi/gson/internal/bind/h;->d:Lcom/xiaomi/gamecenter/sdk/br;

    invoke-virtual {v4}, Lcom/xiaomi/gamecenter/sdk/br;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/xiaomi/gson/internal/bind/n;-><init>(Lcom/xiaomi/gson/Gson;Lcom/xiaomi/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    invoke-virtual {v1, p1, v0}, Lcom/xiaomi/gson/TypeAdapter;->a(Lcom/xiaomi/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/xiaomi/gson/internal/bind/h;->h:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/gson/internal/bind/h;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
