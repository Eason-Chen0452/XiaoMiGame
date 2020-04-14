.class public final Lcom/xiaomi/gson/Gson;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/xiaomi/gamecenter/sdk/br;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/gamecenter/sdk/br",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/gamecenter/sdk/br",
            "<*>;",
            "Lcom/xiaomi/gson/n",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/gamecenter/sdk/br",
            "<*>;",
            "Lcom/xiaomi/gson/TypeAdapter",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/gson/u;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/xiaomi/gson/internal/ConstructorConstructor;

.field private final f:Lcom/xiaomi/gson/internal/Excluder;

.field private final g:Lcom/xiaomi/gson/g;

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:Z

.field private final l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/gson/h;

    invoke-direct {v0}, Lcom/xiaomi/gson/h;-><init>()V

    sput-object v0, Lcom/xiaomi/gson/Gson;->a:Lcom/xiaomi/gamecenter/sdk/br;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    sget-object v1, Lcom/xiaomi/gson/internal/Excluder;->a:Lcom/xiaomi/gson/internal/Excluder;

    sget-object v2, Lcom/xiaomi/gson/FieldNamingPolicy;->IDENTITY:Lcom/xiaomi/gson/FieldNamingPolicy;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/gson/LongSerializationPolicy;->DEFAULT:Lcom/xiaomi/gson/LongSerializationPolicy;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gson/Gson;-><init>(Lcom/xiaomi/gson/internal/Excluder;Lcom/xiaomi/gson/g;Ljava/util/Map;Lcom/xiaomi/gson/LongSerializationPolicy;Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/gson/internal/Excluder;Lcom/xiaomi/gson/g;Ljava/util/Map;Lcom/xiaomi/gson/LongSerializationPolicy;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gson/internal/Excluder;",
            "Lcom/xiaomi/gson/g;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/xiaomi/gson/o",
            "<*>;>;",
            "Lcom/xiaomi/gson/LongSerializationPolicy;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/gson/u;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/gson/Gson;->b:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/gson/Gson;->c:Ljava/util/Map;

    new-instance v0, Lcom/xiaomi/gson/internal/ConstructorConstructor;

    invoke-direct {v0, p3}, Lcom/xiaomi/gson/internal/ConstructorConstructor;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/xiaomi/gson/Gson;->e:Lcom/xiaomi/gson/internal/ConstructorConstructor;

    iput-object p1, p0, Lcom/xiaomi/gson/Gson;->f:Lcom/xiaomi/gson/internal/Excluder;

    iput-object p2, p0, Lcom/xiaomi/gson/Gson;->g:Lcom/xiaomi/gson/g;

    iput-boolean v5, p0, Lcom/xiaomi/gson/Gson;->h:Z

    iput-boolean v5, p0, Lcom/xiaomi/gson/Gson;->j:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gson/Gson;->i:Z

    iput-boolean v5, p0, Lcom/xiaomi/gson/Gson;->k:Z

    iput-boolean v5, p0, Lcom/xiaomi/gson/Gson;->l:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/xiaomi/gson/internal/bind/o;->Y:Lcom/xiaomi/gson/u;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/gson/internal/bind/e;->a:Lcom/xiaomi/gson/u;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/xiaomi/gson/internal/bind/o;->D:Lcom/xiaomi/gson/u;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/gson/internal/bind/o;->m:Lcom/xiaomi/gson/u;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/gson/internal/bind/o;->g:Lcom/xiaomi/gson/u;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/gson/internal/bind/o;->i:Lcom/xiaomi/gson/u;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/gson/internal/bind/o;->k:Lcom/xiaomi/gson/u;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/gson/LongSerializationPolicy;->DEFAULT:Lcom/xiaomi/gson/LongSerializationPolicy;

    if-ne p4, v0, :cond_0

    sget-object v0, Lcom/xiaomi/gson/internal/bind/o;->t:Lcom/xiaomi/gson/TypeAdapter;

    :goto_0
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Long;

    invoke-static {v2, v3, v0}, Lcom/xiaomi/gson/internal/bind/o;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/xiaomi/gson/TypeAdapter;)Lcom/xiaomi/gson/u;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Double;

    new-instance v4, Lcom/xiaomi/gson/i;

    invoke-direct {v4, p0}, Lcom/xiaomi/gson/i;-><init>(Lcom/xiaomi/gson/Gson;)V

    invoke-static {v2, v3, v4}, Lcom/xiaomi/gson/internal/bind/o;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/xiaomi/gson/TypeAdapter;)Lcom/xiaomi/gson/u;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Float;

    new-instance v4, Lcom/xiaomi/gson/j;

    invoke-direct {v4, p0}, Lcom/xiaomi/gson/j;-><init>(Lcom/xiaomi/gson/Gson;)V

    invoke-static {v2, v3, v4}, Lcom/xiaomi/gson/internal/bind/o;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/xiaomi/gson/TypeAdapter;)Lcom/xiaomi/gson/u;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/xiaomi/gson/internal/bind/o;->x:Lcom/xiaomi/gson/u;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/xiaomi/gson/internal/bind/o;->o:Lcom/xiaomi/gson/u;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/xiaomi/gson/internal/bind/o;->q:Lcom/xiaomi/gson/u;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v2, Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v3, Lcom/xiaomi/gson/l;

    invoke-direct {v3, v0}, Lcom/xiaomi/gson/l;-><init>(Lcom/xiaomi/gson/TypeAdapter;)V

    invoke-virtual {v3}, Lcom/xiaomi/gson/l;->a()Lcom/xiaomi/gson/TypeAdapter;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/gson/internal/bind/o;->a(Ljava/lang/Class;Lcom/xiaomi/gson/TypeAdapter;)Lcom/xiaomi/gson/u;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v2, Ljava/util/concurrent/atomic/AtomicLongArray;

    new-instance v3, Lcom/xiaomi/gson/m;

    invoke-direct {v3, v0}, Lcom/xiaomi/gson/m;-><init>(Lcom/xiaomi/gson/TypeAdapter;)V

    invoke-virtual {v3}, Lcom/xiaomi/gson/m;->a()Lcom/xiaomi/gson/TypeAdapter;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/gson/internal/bind/o;->a(Ljava/lang/Class;Lcom/xiaomi/gson/TypeAdapter;)Lcom/xiaomi/gson/u;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/gson/internal/bind/o;->s:Lcom/xiaomi/gson/u;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/gson/internal/bind/o;->z:Lcom/xiaomi/gson/u;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/gson/internal/bind/o;->F:Lcom/xiaomi/gson/u;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/gson/internal/bind/o;->H:Lcom/xiaomi/gson/u;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v0, Ljava/math/BigDecimal;

    sget-object v2, Lcom/xiaomi/gson/internal/bind/o;->B:Lcom/xiaomi/gson/TypeAdapter;

    invoke-static {v0, v2}, Lcom/xiaomi/gson/internal/bind/o;->a(Ljava/lang/Class;Lcom/xiaomi/gson/TypeAdapter;)Lcom/xiaomi/gson/u;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v0, Ljava/math/BigInteger;

    sget-object v2, Lcom/xiaomi/gson/internal/bind/o;->C:Lcom/xiaomi/gson/TypeAdapter;

    invoke-static {v0, v2}, Lcom/xiaomi/gson/internal/bind/o;->a(Ljava/lang/Class;Lcom/xiaomi/gson/TypeAdapter;)Lcom/xiaomi/gson/u;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/gson/internal/bind/o;->J:Lcom/xiaomi/gson/u;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/gson/internal/bind/o;->L:Lcom/xiaomi/gson/u;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/gson/internal/bind/o;->P:Lcom/xiaomi/gson/u;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/gson/internal/bind/o;->R:Lcom/xiaomi/gson/u;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/gson/internal/bind/o;->W:Lcom/xiaomi/gson/u;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/gson/internal/bind/o;->N:Lcom/xiaomi/gson/u;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/gson/internal/bind/o;->d:Lcom/xiaomi/gson/u;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/gson/internal/bind/DateTypeAdapter;->a:Lcom/xiaomi/gson/u;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/gson/internal/bind/o;->U:Lcom/xiaomi/gson/u;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/gson/internal/bind/TimeTypeAdapter;->a:Lcom/xiaomi/gson/u;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/gson/internal/bind/SqlDateTypeAdapter;->a:Lcom/xiaomi/gson/u;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/gson/internal/bind/o;->S:Lcom/xiaomi/gson/u;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/gson/internal/bind/ArrayTypeAdapter;->a:Lcom/xiaomi/gson/u;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/gson/internal/bind/o;->b:Lcom/xiaomi/gson/u;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/xiaomi/gson/internal/bind/CollectionTypeAdapterFactory;

    iget-object v2, p0, Lcom/xiaomi/gson/Gson;->e:Lcom/xiaomi/gson/internal/ConstructorConstructor;

    invoke-direct {v0, v2}, Lcom/xiaomi/gson/internal/bind/CollectionTypeAdapterFactory;-><init>(Lcom/xiaomi/gson/internal/ConstructorConstructor;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/xiaomi/gson/internal/bind/MapTypeAdapterFactory;

    iget-object v2, p0, Lcom/xiaomi/gson/Gson;->e:Lcom/xiaomi/gson/internal/ConstructorConstructor;

    invoke-direct {v0, v2, v5}, Lcom/xiaomi/gson/internal/bind/MapTypeAdapterFactory;-><init>(Lcom/xiaomi/gson/internal/ConstructorConstructor;Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/xiaomi/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    iget-object v2, p0, Lcom/xiaomi/gson/Gson;->e:Lcom/xiaomi/gson/internal/ConstructorConstructor;

    invoke-direct {v0, v2}, Lcom/xiaomi/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;-><init>(Lcom/xiaomi/gson/internal/ConstructorConstructor;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/gson/internal/bind/o;->Z:Lcom/xiaomi/gson/u;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/xiaomi/gson/internal/bind/ReflectiveTypeAdapterFactory;

    iget-object v2, p0, Lcom/xiaomi/gson/Gson;->e:Lcom/xiaomi/gson/internal/ConstructorConstructor;

    invoke-direct {v0, v2, p2, p1}, Lcom/xiaomi/gson/internal/bind/ReflectiveTypeAdapterFactory;-><init>(Lcom/xiaomi/gson/internal/ConstructorConstructor;Lcom/xiaomi/gson/g;Lcom/xiaomi/gson/internal/Excluder;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gson/Gson;->d:Ljava/util/List;

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/gson/k;

    invoke-direct {v0}, Lcom/xiaomi/gson/k;-><init>()V

    goto/16 :goto_0
.end method

.method private a(Ljava/io/Writer;)Lcom/xiaomi/gson/stream/JsonWriter;
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/gson/Gson;->j:Z

    if-eqz v0, :cond_0

    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/xiaomi/gson/stream/JsonWriter;

    invoke-direct {v0, p1}, Lcom/xiaomi/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    iget-boolean v1, p0, Lcom/xiaomi/gson/Gson;->k:Z

    if-eqz v1, :cond_1

    const-string v1, "  "

    invoke-virtual {v0, v1}, Lcom/xiaomi/gson/stream/JsonWriter;->c(Ljava/lang/String;)V

    :cond_1
    iget-boolean v1, p0, Lcom/xiaomi/gson/Gson;->h:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/gson/stream/JsonWriter;->d(Z)V

    return-object v0
.end method

.method private a(Lcom/xiaomi/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaomi/gson/stream/JsonReader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->p()Z

    move-result v2

    invoke-virtual {p1, v1}, Lcom/xiaomi/gson/stream/JsonReader;->a(Z)V

    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->f()Lcom/xiaomi/gson/stream/JsonToken;

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/xiaomi/gamecenter/sdk/br;->get(Ljava/lang/reflect/Type;)Lcom/xiaomi/gamecenter/sdk/br;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gson/Gson;->a(Lcom/xiaomi/gamecenter/sdk/br;)Lcom/xiaomi/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/gson/TypeAdapter;->a(Lcom/xiaomi/gson/stream/JsonReader;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {p1, v2}, Lcom/xiaomi/gson/stream/JsonReader;->a(Z)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    if-eqz v1, :cond_0

    invoke-virtual {p1, v2}, Lcom/xiaomi/gson/stream/JsonReader;->a(Z)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v1, Lcom/xiaomi/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/xiaomi/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v2}, Lcom/xiaomi/gson/stream/JsonReader;->a(Z)V

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/xiaomi/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/xiaomi/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/xiaomi/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/xiaomi/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method static a(D)V
    .locals 4

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/xiaomi/gamecenter/sdk/br;)Lcom/xiaomi/gson/TypeAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaomi/gamecenter/sdk/br",
            "<TT;>;)",
            "Lcom/xiaomi/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    iget-object v1, p0, Lcom/xiaomi/gson/Gson;->c:Ljava/util/Map;

    if-nez p1, :cond_1

    sget-object v0, Lcom/xiaomi/gson/Gson;->a:Lcom/xiaomi/gamecenter/sdk/br;

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gson/TypeAdapter;

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/gson/Gson;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/gson/Gson;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    move v1, v0

    :goto_2
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gson/n;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v3, Lcom/xiaomi/gson/n;

    invoke-direct {v3}, Lcom/xiaomi/gson/n;-><init>()V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/gson/Gson;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gson/u;

    invoke-interface {v0, p0, p1}, Lcom/xiaomi/gson/u;->a(Lcom/xiaomi/gson/Gson;Lcom/xiaomi/gamecenter/sdk/br;)Lcom/xiaomi/gson/TypeAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v3, v0}, Lcom/xiaomi/gson/n;->a(Lcom/xiaomi/gson/TypeAdapter;)V

    iget-object v3, p0, Lcom/xiaomi/gson/Gson;->c:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/gson/Gson;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_1

    :cond_4
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GSON cannot handle "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/xiaomi/gson/Gson;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_5
    throw v0

    :cond_6
    move-object v2, v0

    goto :goto_2
.end method

.method public final a(Lcom/xiaomi/gson/u;Lcom/xiaomi/gamecenter/sdk/br;)Lcom/xiaomi/gson/TypeAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaomi/gson/u;",
            "Lcom/xiaomi/gamecenter/sdk/br",
            "<TT;>;)",
            "Lcom/xiaomi/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/xiaomi/gson/Gson;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    iget-object v2, p0, Lcom/xiaomi/gson/Gson;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gson/u;

    if-nez v2, :cond_2

    if-ne v0, p1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_2
    invoke-interface {v0, p0, p2}, Lcom/xiaomi/gson/u;->a(Lcom/xiaomi/gson/Gson;Lcom/xiaomi/gamecenter/sdk/br;)Lcom/xiaomi/gson/TypeAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GSON cannot serialize "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/Class;)Lcom/xiaomi/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/xiaomi/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/br;->get(Ljava/lang/Class;)Lcom/xiaomi/gamecenter/sdk/br;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gson/Gson;->a(Lcom/xiaomi/gamecenter/sdk/br;)Lcom/xiaomi/gson/TypeAdapter;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/xiaomi/gson/stream/JsonReader;

    invoke-direct {v1, v0}, Lcom/xiaomi/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    iget-boolean v0, p0, Lcom/xiaomi/gson/Gson;->l:Z

    invoke-virtual {v1, v0}, Lcom/xiaomi/gson/stream/JsonReader;->a(Z)V

    invoke-direct {p0, v1, p2}, Lcom/xiaomi/gson/Gson;->a(Lcom/xiaomi/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lcom/xiaomi/gson/stream/JsonReader;->f()Lcom/xiaomi/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/gson/stream/JsonToken;->END_DOCUMENT:Lcom/xiaomi/gson/stream/JsonToken;

    if-eq v1, v2, :cond_0

    new-instance v0, Lcom/xiaomi/gson/JsonIOException;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lcom/xiaomi/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/xiaomi/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/xiaomi/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/xiaomi/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/xiaomi/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 8

    if-nez p1, :cond_0

    sget-object v3, Lcom/xiaomi/gson/JsonNull;->a:Lcom/xiaomi/gson/JsonNull;

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    move-object v0, v2

    check-cast v0, Ljava/io/Writer;

    move-object v1, v0

    invoke-direct {p0, v1}, Lcom/xiaomi/gson/Gson;->a(Ljava/io/Writer;)Lcom/xiaomi/gson/stream/JsonWriter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/gson/stream/JsonWriter;->g()Z

    move-result v5

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Lcom/xiaomi/gson/stream/JsonWriter;->b(Z)V

    invoke-virtual {v4}, Lcom/xiaomi/gson/stream/JsonWriter;->h()Z

    move-result v6

    iget-boolean v1, p0, Lcom/xiaomi/gson/Gson;->i:Z

    invoke-virtual {v4, v1}, Lcom/xiaomi/gson/stream/JsonWriter;->c(Z)V

    invoke-virtual {v4}, Lcom/xiaomi/gson/stream/JsonWriter;->i()Z

    move-result v7

    iget-boolean v1, p0, Lcom/xiaomi/gson/Gson;->h:Z

    invoke-virtual {v4, v1}, Lcom/xiaomi/gson/stream/JsonWriter;->d(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v3, v4}, Lcom/xiaomi/gson/internal/aj;->a(Lcom/xiaomi/gson/JsonElement;Lcom/xiaomi/gson/stream/JsonWriter;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4, v5}, Lcom/xiaomi/gson/stream/JsonWriter;->b(Z)V

    invoke-virtual {v4, v6}, Lcom/xiaomi/gson/stream/JsonWriter;->c(Z)V

    invoke-virtual {v4, v7}, Lcom/xiaomi/gson/stream/JsonWriter;->d(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    :try_start_3
    new-instance v2, Lcom/xiaomi/gson/JsonIOException;

    invoke-direct {v2, v1}, Lcom/xiaomi/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    :try_start_4
    invoke-virtual {v4, v5}, Lcom/xiaomi/gson/stream/JsonWriter;->b(Z)V

    invoke-virtual {v4, v6}, Lcom/xiaomi/gson/stream/JsonWriter;->c(Z)V

    invoke-virtual {v4, v7}, Lcom/xiaomi/gson/stream/JsonWriter;->d(Z)V

    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v1

    new-instance v2, Lcom/xiaomi/gson/JsonIOException;

    invoke-direct {v2, v1}, Lcom/xiaomi/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    :try_start_5
    move-object v0, v2

    check-cast v0, Ljava/io/Writer;

    move-object v1, v0

    invoke-direct {p0, v1}, Lcom/xiaomi/gson/Gson;->a(Ljava/io/Writer;)Lcom/xiaomi/gson/stream/JsonWriter;

    move-result-object v4

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/br;->get(Ljava/lang/reflect/Type;)Lcom/xiaomi/gamecenter/sdk/br;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/gson/Gson;->a(Lcom/xiaomi/gamecenter/sdk/br;)Lcom/xiaomi/gson/TypeAdapter;

    move-result-object v1

    invoke-virtual {v4}, Lcom/xiaomi/gson/stream/JsonWriter;->g()Z

    move-result v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/xiaomi/gson/stream/JsonWriter;->b(Z)V

    invoke-virtual {v4}, Lcom/xiaomi/gson/stream/JsonWriter;->h()Z

    move-result v5

    iget-boolean v6, p0, Lcom/xiaomi/gson/Gson;->i:Z

    invoke-virtual {v4, v6}, Lcom/xiaomi/gson/stream/JsonWriter;->c(Z)V

    invoke-virtual {v4}, Lcom/xiaomi/gson/stream/JsonWriter;->i()Z

    move-result v6

    iget-boolean v7, p0, Lcom/xiaomi/gson/Gson;->h:Z

    invoke-virtual {v4, v7}, Lcom/xiaomi/gson/stream/JsonWriter;->d(Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :try_start_6
    invoke-virtual {v1, v4, p1}, Lcom/xiaomi/gson/TypeAdapter;->a(Lcom/xiaomi/gson/stream/JsonWriter;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v4, v3}, Lcom/xiaomi/gson/stream/JsonWriter;->b(Z)V

    invoke-virtual {v4, v5}, Lcom/xiaomi/gson/stream/JsonWriter;->c(Z)V

    invoke-virtual {v4, v6}, Lcom/xiaomi/gson/stream/JsonWriter;->d(Z)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_2
    move-exception v1

    :try_start_8
    new-instance v2, Lcom/xiaomi/gson/JsonIOException;

    invoke-direct {v2, v1}, Lcom/xiaomi/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_9
    invoke-virtual {v4, v3}, Lcom/xiaomi/gson/stream/JsonWriter;->b(Z)V

    invoke-virtual {v4, v5}, Lcom/xiaomi/gson/stream/JsonWriter;->c(Z)V

    invoke-virtual {v4, v6}, Lcom/xiaomi/gson/stream/JsonWriter;->d(Z)V

    throw v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :catch_3
    move-exception v1

    new-instance v2, Lcom/xiaomi/gson/JsonIOException;

    invoke-direct {v2, v1}, Lcom/xiaomi/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/xiaomi/gson/Gson;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gson/Gson;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gson/Gson;->e:Lcom/xiaomi/gson/internal/ConstructorConstructor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
