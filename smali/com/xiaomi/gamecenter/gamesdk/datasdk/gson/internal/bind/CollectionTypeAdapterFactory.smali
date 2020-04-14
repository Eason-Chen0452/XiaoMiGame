.class public final Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/CollectionTypeAdapterFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;
    }
.end annotation


# instance fields
.field private final constructorConstructor:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ConstructorConstructor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/CollectionTypeAdapterFactory;->constructorConstructor:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ConstructorConstructor;

    return-void
.end method


# virtual methods
.method public final create(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;
    .locals 4
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

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/$Gson$Types;->getCollectionElementType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->getAdapter(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/CollectionTypeAdapterFactory;->constructorConstructor:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ConstructorConstructor;

    invoke-virtual {v0, p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ConstructorConstructor;->get(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ObjectConstructor;

    move-result-object v3

    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;-><init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;Ljava/lang/reflect/Type;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ObjectConstructor;)V

    goto :goto_0
.end method
