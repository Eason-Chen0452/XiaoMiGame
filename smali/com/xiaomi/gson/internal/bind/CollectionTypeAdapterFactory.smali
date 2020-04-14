.class public final Lcom/xiaomi/gson/internal/bind/CollectionTypeAdapterFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/gson/u;


# instance fields
.field private final a:Lcom/xiaomi/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/xiaomi/gson/internal/ConstructorConstructor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/gson/internal/bind/CollectionTypeAdapterFactory;->a:Lcom/xiaomi/gson/internal/ConstructorConstructor;

    return-void
.end method


# virtual methods
.method public final a(Lcom/xiaomi/gson/Gson;Lcom/xiaomi/gamecenter/sdk/br;)Lcom/xiaomi/gson/TypeAdapter;
    .locals 4
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

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/br;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/br;->getRawType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, v1}, Lcom/xiaomi/gson/internal/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/br;->get(Ljava/lang/reflect/Type;)Lcom/xiaomi/gamecenter/sdk/br;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/gson/Gson;->a(Lcom/xiaomi/gamecenter/sdk/br;)Lcom/xiaomi/gson/TypeAdapter;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaomi/gson/internal/bind/CollectionTypeAdapterFactory;->a:Lcom/xiaomi/gson/internal/ConstructorConstructor;

    invoke-virtual {v0, p2}, Lcom/xiaomi/gson/internal/ConstructorConstructor;->a(Lcom/xiaomi/gamecenter/sdk/br;)Lcom/xiaomi/gson/internal/ah;

    move-result-object v3

    new-instance v0, Lcom/xiaomi/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/xiaomi/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;-><init>(Lcom/xiaomi/gson/Gson;Ljava/lang/reflect/Type;Lcom/xiaomi/gson/TypeAdapter;Lcom/xiaomi/gson/internal/ah;)V

    goto :goto_0
.end method
