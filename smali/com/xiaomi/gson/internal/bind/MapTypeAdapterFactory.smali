.class public final Lcom/xiaomi/gson/internal/bind/MapTypeAdapterFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/gson/u;


# instance fields
.field final a:Z

.field private final b:Lcom/xiaomi/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/xiaomi/gson/internal/ConstructorConstructor;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/gson/internal/bind/MapTypeAdapterFactory;->b:Lcom/xiaomi/gson/internal/ConstructorConstructor;

    iput-boolean p2, p0, Lcom/xiaomi/gson/internal/bind/MapTypeAdapterFactory;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/xiaomi/gson/Gson;Lcom/xiaomi/gamecenter/sdk/br;)Lcom/xiaomi/gson/TypeAdapter;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaomi/gson/Gson;",
            "Lcom/xiaomi/gamecenter/sdk/br",
            "<TT;>;)",
            "Lcom/xiaomi/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/br;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/br;->getRawType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/xiaomi/gson/internal/b;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/gson/internal/b;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v0, v1, v3

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_1

    const-class v2, Ljava/lang/Boolean;

    if-ne v0, v2, :cond_2

    :cond_1
    sget-object v4, Lcom/xiaomi/gson/internal/bind/o;->f:Lcom/xiaomi/gson/TypeAdapter;

    :goto_1
    aget-object v0, v1, v5

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/br;->get(Ljava/lang/reflect/Type;)Lcom/xiaomi/gamecenter/sdk/br;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/gson/Gson;->a(Lcom/xiaomi/gamecenter/sdk/br;)Lcom/xiaomi/gson/TypeAdapter;

    move-result-object v6

    iget-object v0, p0, Lcom/xiaomi/gson/internal/bind/MapTypeAdapterFactory;->b:Lcom/xiaomi/gson/internal/ConstructorConstructor;

    invoke-virtual {v0, p2}, Lcom/xiaomi/gson/internal/ConstructorConstructor;->a(Lcom/xiaomi/gamecenter/sdk/br;)Lcom/xiaomi/gson/internal/ah;

    move-result-object v7

    new-instance v0, Lcom/xiaomi/gson/internal/bind/MapTypeAdapterFactory$Adapter;

    aget-object v3, v1, v3

    aget-object v5, v1, v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/gson/internal/bind/MapTypeAdapterFactory$Adapter;-><init>(Lcom/xiaomi/gson/internal/bind/MapTypeAdapterFactory;Lcom/xiaomi/gson/Gson;Ljava/lang/reflect/Type;Lcom/xiaomi/gson/TypeAdapter;Ljava/lang/reflect/Type;Lcom/xiaomi/gson/TypeAdapter;Lcom/xiaomi/gson/internal/ah;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/br;->get(Ljava/lang/reflect/Type;)Lcom/xiaomi/gamecenter/sdk/br;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/gson/Gson;->a(Lcom/xiaomi/gamecenter/sdk/br;)Lcom/xiaomi/gson/TypeAdapter;

    move-result-object v4

    goto :goto_1
.end method
