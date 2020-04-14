.class public final Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson$FutureTypeAdapter;
    }
.end annotation


# static fields
.field static final DEFAULT_COMPLEX_MAP_KEYS:Z = false

.field static final DEFAULT_ESCAPE_HTML:Z = true

.field static final DEFAULT_JSON_NON_EXECUTABLE:Z = false

.field static final DEFAULT_LENIENT:Z = false

.field static final DEFAULT_PRETTY_PRINT:Z = false

.field static final DEFAULT_SERIALIZE_NULLS:Z = false

.field static final DEFAULT_SPECIALIZE_FLOAT_VALUES:Z = false

.field private static final JSON_NON_EXECUTABLE_PREFIX:Ljava/lang/String; = ")]}\'\n"

.field private static final NULL_KEY_SURROGATE:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field final builderFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field final builderHierarchyFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final calls:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken",
            "<*>;",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson$FutureTypeAdapter",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field final complexMapKeySerialization:Z

.field private final constructorConstructor:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ConstructorConstructor;

.field final datePattern:Ljava/lang/String;

.field final dateStyle:I

.field final excluder:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

.field final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field final fieldNamingStrategy:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/FieldNamingStrategy;

.field final generateNonExecutableJson:Z

.field final htmlSafe:Z

.field final instanceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/InstanceCreator",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final jsonAdapterFactory:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

.field final lenient:Z

.field final longSerializationPolicy:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/LongSerializationPolicy;

.field final prettyPrinting:Z

.field final serializeNulls:Z

.field final serializeSpecialFloatingPointValues:Z

.field final timeStyle:I

.field private final typeTokenCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken",
            "<*>;",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->NULL_KEY_SURROGATE:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;

    return-void
.end method

.method public constructor <init>()V
    .locals 18

    sget-object v1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->DEFAULT:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    sget-object v2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/FieldNamingPolicy;->IDENTITY:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/FieldNamingPolicy;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/LongSerializationPolicy;->DEFAULT:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/LongSerializationPolicy;

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v17}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;-><init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZZLcom/xiaomi/gamecenter/gamesdk/datasdk/gson/LongSerializationPolicy;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZZLcom/xiaomi/gamecenter/gamesdk/datasdk/gson/LongSerializationPolicy;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/FieldNamingStrategy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/InstanceCreator",
            "<*>;>;ZZZZZZZ",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/LongSerializationPolicy;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->typeTokenCache:Ljava/util/Map;

    iput-object p1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->excluder:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->fieldNamingStrategy:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/FieldNamingStrategy;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->instanceCreators:Ljava/util/Map;

    new-instance v1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ConstructorConstructor;

    invoke-direct {v1, p3}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ConstructorConstructor;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->constructorConstructor:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ConstructorConstructor;

    iput-boolean p4, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->serializeNulls:Z

    iput-boolean p5, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->complexMapKeySerialization:Z

    iput-boolean p6, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->generateNonExecutableJson:Z

    iput-boolean p7, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->htmlSafe:Z

    iput-boolean p8, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->prettyPrinting:Z

    iput-boolean p9, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->lenient:Z

    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->serializeSpecialFloatingPointValues:Z

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->longSerializationPolicy:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/LongSerializationPolicy;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->datePattern:Ljava/lang/String;

    move/from16 v0, p13

    iput v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->dateStyle:I

    move/from16 v0, p14

    iput v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->timeStyle:I

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->builderFactories:Ljava/util/List;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->builderHierarchyFactories:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->JSON_ELEMENT_FACTORY:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/ObjectTypeAdapter;->FACTORY:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p17

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->STRING_FACTORY:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->INTEGER_FACTORY:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->BOOLEAN_FACTORY:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->BYTE_FACTORY:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->SHORT_FACTORY:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {p11 .. p11}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->longAdapter(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/LongSerializationPolicy;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Long;

    invoke-static {v3, v4, v2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Double;

    move/from16 v0, p10

    invoke-direct {p0, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->doubleAdapter(Z)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Float;

    move/from16 v0, p10

    invoke-direct {p0, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->floatAdapter(Z)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->NUMBER_FACTORY:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->ATOMIC_INTEGER_FACTORY:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->ATOMIC_BOOLEAN_FACTORY:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->atomicLongAdapter(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v3, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->atomicLongArrayAdapter(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->ATOMIC_INTEGER_ARRAY_FACTORY:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->CHARACTER_FACTORY:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->STRING_BUILDER_FACTORY:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->STRING_BUFFER_FACTORY:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v2, Ljava/math/BigDecimal;

    sget-object v3, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->BIG_DECIMAL:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    invoke-static {v2, v3}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v2, Ljava/math/BigInteger;

    sget-object v3, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->BIG_INTEGER:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    invoke-static {v2, v3}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->URL_FACTORY:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->URI_FACTORY:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->UUID_FACTORY:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->CURRENCY_FACTORY:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->LOCALE_FACTORY:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->INET_ADDRESS_FACTORY:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->BIT_SET_FACTORY:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/DateTypeAdapter;->FACTORY:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->CALENDAR_FACTORY:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TimeTypeAdapter;->FACTORY:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/SqlDateTypeAdapter;->FACTORY:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->TIMESTAMP_FACTORY:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/ArrayTypeAdapter;->FACTORY:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->CLASS_FACTORY:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/CollectionTypeAdapterFactory;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->constructorConstructor:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ConstructorConstructor;

    invoke-direct {v2, v3}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/CollectionTypeAdapterFactory;-><init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ConstructorConstructor;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/MapTypeAdapterFactory;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->constructorConstructor:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ConstructorConstructor;

    invoke-direct {v2, v3, p5}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/MapTypeAdapterFactory;-><init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ConstructorConstructor;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->constructorConstructor:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ConstructorConstructor;

    invoke-direct {v2, v3}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;-><init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ConstructorConstructor;)V

    iput-object v2, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->jsonAdapterFactory:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->jsonAdapterFactory:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->ENUM_FACTORY:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/ReflectiveTypeAdapterFactory;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->constructorConstructor:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ConstructorConstructor;

    iget-object v4, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->jsonAdapterFactory:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    invoke-direct {v2, v3, p2, p1, v4}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/ReflectiveTypeAdapterFactory;-><init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ConstructorConstructor;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/FieldNamingStrategy;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->factories:Ljava/util/List;

    return-void
.end method

.method private static assertFullConsumption(Ljava/lang/Object;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;)V
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;->peek()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonToken;->END_DOCUMENT:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonIOException;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-void
.end method

.method private static atomicLongAdapter(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter",
            "<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson$4;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson$4;-><init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson$4;->nullSafe()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    move-result-object v0

    return-object v0
.end method

.method private static atomicLongArrayAdapter(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter",
            "<",
            "Ljava/util/concurrent/atomic/AtomicLongArray;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson$5;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson$5;-><init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson$5;->nullSafe()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    move-result-object v0

    return-object v0
.end method

.method static checkValidFloatingPoint(D)V
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

.method private doubleAdapter(Z)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->DOUBLE:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson$1;-><init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;)V

    goto :goto_0
.end method

.method private floatAdapter(Z)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->FLOAT:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson$2;-><init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;)V

    goto :goto_0
.end method

.method private static longAdapter(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/LongSerializationPolicy;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/LongSerializationPolicy;",
            ")",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/LongSerializationPolicy;->DEFAULT:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/LongSerializationPolicy;

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->LONG:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson$3;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson$3;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public final excluder()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->excluder:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    return-object v0
.end method

.method public final fieldNamingStrategy()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/FieldNamingStrategy;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->fieldNamingStrategy:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/FieldNamingStrategy;

    return-object v0
.end method

.method public final fromJson(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->fromJson(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final fromJson(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/JsonTreeReader;

    invoke-direct {v0, p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/JsonTreeReader;-><init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;)V

    invoke-virtual {p0, v0, p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->fromJson(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final fromJson(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;->isLenient()Z

    move-result v2

    invoke-virtual {p1, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;->setLenient(Z)V

    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;->peek()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonToken;

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->getAdapter(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;->read(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {p1, v2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;->setLenient(Z)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    if-eqz v1, :cond_0

    invoke-virtual {p1, v2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;->setLenient(Z)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;->setLenient(Z)V

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public final fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->newJsonReader(Ljava/io/Reader;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->fromJson(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->assertFullConsumption(Ljava/lang/Object;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;)V

    invoke-static {p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->newJsonReader(Ljava/io/Reader;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->fromJson(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->assertFullConsumption(Ljava/lang/Object;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;)V

    return-object v1
.end method

.method public final fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
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

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getAdapter(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    iget-object v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->typeTokenCache:Ljava/util/Map;

    if-nez p1, :cond_1

    sget-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->NULL_KEY_SURROGATE:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    move v1, v0

    :goto_2
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson$FutureTypeAdapter;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v3, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson$FutureTypeAdapter;

    invoke-direct {v3}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson$FutureTypeAdapter;-><init>()V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    invoke-interface {v0, p0, p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;->create(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v3, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson$FutureTypeAdapter;->setDelegate(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;)V

    iget-object v3, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->typeTokenCache:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->calls:Ljava/lang/ThreadLocal;

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

    iget-object v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_5
    throw v0

    :cond_6
    move-object v2, v0

    goto :goto_2
.end method

.method public final getAdapter(Ljava/lang/Class;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->getAdapter(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    move-result-object v0

    return-object v0
.end method

.method public final getDelegateAdapter(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->jsonAdapterFactory:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    if-nez v1, :cond_2

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-interface {v0, p0, p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;->create(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

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

.method public final htmlSafe()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->htmlSafe:Z

    return v0
.end method

.method public final newBuilder()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;
    .locals 1

    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;-><init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;)V

    return-object v0
.end method

.method public final newJsonReader(Ljava/io/Reader;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;
    .locals 2

    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    iget-boolean v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->lenient:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;->setLenient(Z)V

    return-object v0
.end method

.method public final newJsonWriter(Ljava/io/Writer;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->generateNonExecutableJson:Z

    if-eqz v0, :cond_0

    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;

    invoke-direct {v0, p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    iget-boolean v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->prettyPrinting:Z

    if-eqz v1, :cond_1

    const-string v1, "  "

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;->setIndent(Ljava/lang/String;)V

    :cond_1
    iget-boolean v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->serializeNulls:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    return-object v0
.end method

.method public final serializeNulls()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->serializeNulls:Z

    return v0
.end method

.method public final toJson(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->toJson(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonNull;->INSTANCE:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonNull;

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->toJson(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toJson(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;)V
    .locals 5

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;->isLenient()Z

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;->setLenient(Z)V

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;->isHtmlSafe()Z

    move-result v2

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->htmlSafe:Z

    invoke-virtual {p2, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;->getSerializeNulls()Z

    move-result v3

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->serializeNulls:Z

    invoke-virtual {p2, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    :try_start_0
    invoke-static {p1, p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Streams;->write(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;->setLenient(Z)V

    invoke-virtual {p2, v2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    invoke-virtual {p2, v3}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v4, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonIOException;

    invoke-direct {v4, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p2, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;->setLenient(Z)V

    invoke-virtual {p2, v2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    invoke-virtual {p2, v3}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    throw v0
.end method

.method public final toJson(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;Ljava/lang/Appendable;)V
    .locals 2

    :try_start_0
    invoke-static {p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Streams;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->toJson(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final toJson(Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonNull;->INSTANCE:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonNull;

    invoke-virtual {p0, v0, p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->toJson(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;Ljava/lang/Appendable;)V

    goto :goto_0
.end method

.method public final toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;)V
    .locals 5

    invoke-static {p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->getAdapter(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {p3}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;->isLenient()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;->setLenient(Z)V

    invoke-virtual {p3}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;->isHtmlSafe()Z

    move-result v2

    iget-boolean v3, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->htmlSafe:Z

    invoke-virtual {p3, v3}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    invoke-virtual {p3}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;->getSerializeNulls()Z

    move-result v3

    iget-boolean v4, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->serializeNulls:Z

    invoke-virtual {p3, v4}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    :try_start_0
    invoke-virtual {v0, p3, p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;->write(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;->setLenient(Z)V

    invoke-virtual {p3, v2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    invoke-virtual {p3, v3}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v4, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonIOException;

    invoke-direct {v4, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p3, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;->setLenient(Z)V

    invoke-virtual {p3, v2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    invoke-virtual {p3, v3}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    throw v0
.end method

.method public final toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 2

    :try_start_0
    invoke-static {p3}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Streams;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final toJsonTree(Ljava/lang/Object;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;
    .locals 1

    if-nez p1, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonNull;->INSTANCE:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonNull;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;

    move-result-object v0

    goto :goto_0
.end method

.method public final toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;
    .locals 1

    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/JsonTreeWriter;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/JsonTreeWriter;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonWriter;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/JsonTreeWriter;->get()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->serializeNulls:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->factories:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->constructorConstructor:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ConstructorConstructor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
