.class public final Lcom/xiaomi/gson/internal/ConstructorConstructor;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/xiaomi/gson/o",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/xiaomi/gson/o",
            "<*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/gson/internal/ConstructorConstructor;->a:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/Class;)Lcom/xiaomi/gson/internal/ah;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lcom/xiaomi/gson/internal/ah",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_0
    new-instance v0, Lcom/xiaomi/gson/internal/j;

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/gson/internal/j;-><init>(Lcom/xiaomi/gson/internal/ConstructorConstructor;Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/xiaomi/gamecenter/sdk/br;)Lcom/xiaomi/gson/internal/ah;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaomi/gamecenter/sdk/br",
            "<TT;>;)",
            "Lcom/xiaomi/gson/internal/ah",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/br;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/br;->getRawType()Ljava/lang/Class;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaomi/gson/internal/ConstructorConstructor;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gson/o;

    if-eqz v0, :cond_1

    new-instance v2, Lcom/xiaomi/gson/internal/c;

    invoke-direct {v2, p0, v0, v1}, Lcom/xiaomi/gson/internal/c;-><init>(Lcom/xiaomi/gson/internal/ConstructorConstructor;Lcom/xiaomi/gson/o;Ljava/lang/reflect/Type;)V

    move-object v0, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/gson/internal/ConstructorConstructor;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gson/o;

    if-eqz v0, :cond_2

    new-instance v2, Lcom/xiaomi/gson/internal/i;

    invoke-direct {v2, p0, v0, v1}, Lcom/xiaomi/gson/internal/i;-><init>(Lcom/xiaomi/gson/internal/ConstructorConstructor;Lcom/xiaomi/gson/o;Ljava/lang/reflect/Type;)V

    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/xiaomi/gson/internal/ConstructorConstructor;->a(Ljava/lang/Class;)Lcom/xiaomi/gson/internal/ah;

    move-result-object v0

    if-nez v0, :cond_0

    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-class v0, Ljava/util/SortedSet;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/xiaomi/gson/internal/k;

    invoke-direct {v0, p0}, Lcom/xiaomi/gson/internal/k;-><init>(Lcom/xiaomi/gson/internal/ConstructorConstructor;)V

    :goto_1
    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/gson/internal/h;

    invoke-direct {v0, p0, v2, v1}, Lcom/xiaomi/gson/internal/h;-><init>(Lcom/xiaomi/gson/internal/ConstructorConstructor;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    goto :goto_0

    :cond_3
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/xiaomi/gson/internal/l;

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/gson/internal/l;-><init>(Lcom/xiaomi/gson/internal/ConstructorConstructor;Ljava/lang/reflect/Type;)V

    goto :goto_1

    :cond_4
    const-class v0, Ljava/util/Set;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/xiaomi/gson/internal/m;

    invoke-direct {v0, p0}, Lcom/xiaomi/gson/internal/m;-><init>(Lcom/xiaomi/gson/internal/ConstructorConstructor;)V

    goto :goto_1

    :cond_5
    const-class v0, Ljava/util/Queue;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/xiaomi/gson/internal/n;

    invoke-direct {v0, p0}, Lcom/xiaomi/gson/internal/n;-><init>(Lcom/xiaomi/gson/internal/ConstructorConstructor;)V

    goto :goto_1

    :cond_6
    new-instance v0, Lcom/xiaomi/gson/internal/o;

    invoke-direct {v0, p0}, Lcom/xiaomi/gson/internal/o;-><init>(Lcom/xiaomi/gson/internal/ConstructorConstructor;)V

    goto :goto_1

    :cond_7
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-class v0, Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/xiaomi/gson/internal/p;

    invoke-direct {v0, p0}, Lcom/xiaomi/gson/internal/p;-><init>(Lcom/xiaomi/gson/internal/ConstructorConstructor;)V

    goto :goto_1

    :cond_8
    const-class v0, Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/xiaomi/gson/internal/d;

    invoke-direct {v0, p0}, Lcom/xiaomi/gson/internal/d;-><init>(Lcom/xiaomi/gson/internal/ConstructorConstructor;)V

    goto :goto_1

    :cond_9
    const-class v0, Ljava/util/SortedMap;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/xiaomi/gson/internal/e;

    invoke-direct {v0, p0}, Lcom/xiaomi/gson/internal/e;-><init>(Lcom/xiaomi/gson/internal/ConstructorConstructor;)V

    goto :goto_1

    :cond_a
    instance-of v0, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_b

    const-class v3, Ljava/lang/String;

    move-object v0, v1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/br;->get(Ljava/lang/reflect/Type;)Lcom/xiaomi/gamecenter/sdk/br;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/br;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Lcom/xiaomi/gson/internal/f;

    invoke-direct {v0, p0}, Lcom/xiaomi/gson/internal/f;-><init>(Lcom/xiaomi/gson/internal/ConstructorConstructor;)V

    goto/16 :goto_1

    :cond_b
    new-instance v0, Lcom/xiaomi/gson/internal/g;

    invoke-direct {v0, p0}, Lcom/xiaomi/gson/internal/g;-><init>(Lcom/xiaomi/gson/internal/ConstructorConstructor;)V

    goto/16 :goto_1

    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gson/internal/ConstructorConstructor;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
