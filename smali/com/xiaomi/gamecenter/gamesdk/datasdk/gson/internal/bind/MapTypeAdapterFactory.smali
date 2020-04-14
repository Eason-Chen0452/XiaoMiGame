.class public final Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/MapTypeAdapterFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/MapTypeAdapterFactory$Adapter;
    }
.end annotation


# instance fields
.field final complexMapKeySerialization:Z

.field private final constructorConstructor:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ConstructorConstructor;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/MapTypeAdapterFactory;->constructorConstructor:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ConstructorConstructor;

    iput-boolean p2, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/MapTypeAdapterFactory;->complexMapKeySerialization:Z

    return-void
.end method

.method private getKeyAdapter(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;Ljava/lang/reflect/Type;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter",
            "<*>;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_0

    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->BOOLEAN_AS_STRING:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->getAdapter(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final create(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;
    .locals 8
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

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/$Gson$Types;->getMapKeyAndValueTypes(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v0, v1, v3

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/MapTypeAdapterFactory;->getKeyAdapter(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;Ljava/lang/reflect/Type;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    move-result-object v4

    aget-object v0, v1, v5

    invoke-static {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->getAdapter(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    move-result-object v6

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/MapTypeAdapterFactory;->constructorConstructor:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ConstructorConstructor;

    invoke-virtual {v0, p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ConstructorConstructor;->get(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ObjectConstructor;

    move-result-object v7

    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/MapTypeAdapterFactory$Adapter;

    aget-object v3, v1, v3

    aget-object v5, v1, v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/MapTypeAdapterFactory$Adapter;-><init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/MapTypeAdapterFactory;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;Ljava/lang/reflect/Type;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;Ljava/lang/reflect/Type;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ObjectConstructor;)V

    goto :goto_0
.end method
