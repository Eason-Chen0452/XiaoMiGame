.class public final Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;
.super Ljava/lang/Object;


# instance fields
.field private complexMapKeySerialization:Z

.field private datePattern:Ljava/lang/String;

.field private dateStyle:I

.field private escapeHtmlChars:Z

.field private excluder:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private fieldNamingPolicy:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/FieldNamingStrategy;

.field private generateNonExecutableJson:Z

.field private final hierarchyFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final instanceCreators:Ljava/util/Map;
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

.field private lenient:Z

.field private longSerializationPolicy:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/LongSerializationPolicy;

.field private prettyPrinting:Z

.field private serializeNulls:Z

.field private serializeSpecialFloatingPointValues:Z

.field private timeStyle:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->DEFAULT:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->excluder:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    sget-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/LongSerializationPolicy;->DEFAULT:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/LongSerializationPolicy;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->longSerializationPolicy:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/LongSerializationPolicy;

    sget-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/FieldNamingPolicy;->IDENTITY:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/FieldNamingPolicy;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->fieldNamingPolicy:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/FieldNamingStrategy;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->factories:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    iput-boolean v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->serializeNulls:Z

    iput v2, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->dateStyle:I

    iput v2, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->timeStyle:I

    iput-boolean v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->complexMapKeySerialization:Z

    iput-boolean v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->escapeHtmlChars:Z

    iput-boolean v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->prettyPrinting:Z

    iput-boolean v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->generateNonExecutableJson:Z

    iput-boolean v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->lenient:Z

    return-void
.end method

.method constructor <init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->DEFAULT:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->excluder:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    sget-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/LongSerializationPolicy;->DEFAULT:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/LongSerializationPolicy;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->longSerializationPolicy:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/LongSerializationPolicy;

    sget-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/FieldNamingPolicy;->IDENTITY:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/FieldNamingPolicy;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->fieldNamingPolicy:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/FieldNamingStrategy;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->factories:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    iput-boolean v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->serializeNulls:Z

    iput v2, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->dateStyle:I

    iput v2, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->timeStyle:I

    iput-boolean v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->complexMapKeySerialization:Z

    iput-boolean v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->escapeHtmlChars:Z

    iput-boolean v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->prettyPrinting:Z

    iput-boolean v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->generateNonExecutableJson:Z

    iput-boolean v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->lenient:Z

    iget-object v0, p1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->excluder:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->excluder:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    iget-object v0, p1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->fieldNamingStrategy:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/FieldNamingStrategy;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->fieldNamingPolicy:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/FieldNamingStrategy;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    iget-object v1, p1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->instanceCreators:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-boolean v0, p1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->serializeNulls:Z

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->serializeNulls:Z

    iget-boolean v0, p1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->complexMapKeySerialization:Z

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->complexMapKeySerialization:Z

    iget-boolean v0, p1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->generateNonExecutableJson:Z

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->generateNonExecutableJson:Z

    iget-boolean v0, p1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->htmlSafe:Z

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->escapeHtmlChars:Z

    iget-boolean v0, p1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->prettyPrinting:Z

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->prettyPrinting:Z

    iget-boolean v0, p1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->lenient:Z

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->lenient:Z

    iget-boolean v0, p1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->serializeSpecialFloatingPointValues:Z

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    iget-object v0, p1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->longSerializationPolicy:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/LongSerializationPolicy;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->longSerializationPolicy:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/LongSerializationPolicy;

    iget-object v0, p1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->datePattern:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    iget v0, p1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->dateStyle:I

    iput v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->dateStyle:I

    iget v0, p1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->timeStyle:I

    iput v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->timeStyle:I

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->factories:Ljava/util/List;

    iget-object v1, p1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->builderFactories:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    iget-object v1, p1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;->builderHierarchyFactories:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x2

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/DefaultDateTypeAdapter;

    const-class v0, Ljava/util/Date;

    invoke-direct {v1, v0, p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/DefaultDateTypeAdapter;

    const-class v2, Ljava/sql/Timestamp;

    invoke-direct {v0, v2, p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/DefaultDateTypeAdapter;

    const-class v3, Ljava/sql/Date;

    invoke-direct {v2, v3, p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    :goto_0
    const-class v3, Ljava/util/Date;

    invoke-static {v3, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/sql/Timestamp;

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v0, Ljava/sql/Date;

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    if-eq p2, v2, :cond_0

    if-eq p3, v2, :cond_0

    new-instance v1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/DefaultDateTypeAdapter;

    const-class v0, Ljava/util/Date;

    invoke-direct {v1, v0, p2, p3}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;II)V

    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/DefaultDateTypeAdapter;

    const-class v2, Ljava/sql/Timestamp;

    invoke-direct {v0, v2, p2, p3}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;II)V

    new-instance v2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/DefaultDateTypeAdapter;

    const-class v3, Ljava/sql/Date;

    invoke-direct {v2, v3, p2, p3}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;II)V

    goto :goto_0
.end method


# virtual methods
.method public final addDeserializationExclusionStrategy(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/ExclusionStrategy;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->excluder:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->withExclusionStrategy(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/ExclusionStrategy;ZZ)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->excluder:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    return-object p0
.end method

.method public final addSerializationExclusionStrategy(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/ExclusionStrategy;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->excluder:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->withExclusionStrategy(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/ExclusionStrategy;ZZ)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->excluder:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    return-object p0
.end method

.method public final create()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;
    .locals 20

    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x3

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->factories:Ljava/util/List;

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->dateStyle:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->timeStyle:I

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V

    new-instance v2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->excluder:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->fieldNamingPolicy:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/FieldNamingStrategy;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->serializeNulls:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->complexMapKeySerialization:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->generateNonExecutableJson:Z

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->escapeHtmlChars:Z

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->prettyPrinting:Z

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->lenient:Z

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->longSerializationPolicy:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/LongSerializationPolicy;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->dateStyle:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->timeStyle:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->factories:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-direct/range {v2 .. v19}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;-><init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZZLcom/xiaomi/gamecenter/gamesdk/datasdk/gson/LongSerializationPolicy;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v2
.end method

.method public final disableHtmlEscaping()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->escapeHtmlChars:Z

    return-object p0
.end method

.method public final disableInnerClassSerialization()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->excluder:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->disableInnerClassSerialization()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->excluder:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    return-object p0
.end method

.method public final enableComplexMapKeySerialization()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->complexMapKeySerialization:Z

    return-object p0
.end method

.method public final varargs excludeFieldsWithModifiers([I)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->excluder:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->withModifiers([I)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->excluder:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    return-object p0
.end method

.method public final excludeFieldsWithoutExposeAnnotation()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->excluder:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->excludeFieldsWithoutExposeAnnotation()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->excluder:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    return-object p0
.end method

.method public final generateNonExecutableJson()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->generateNonExecutableJson:Z

    return-object p0
.end method

.method public final registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;
    .locals 2

    instance-of v0, p2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonSerializer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonDeserializer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/InstanceCreator;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    if-eqz v0, :cond_5

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    instance-of v0, p2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/InstanceCreator;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    move-object v0, p2

    check-cast v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/InstanceCreator;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    instance-of v0, p2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonSerializer;

    if-nez v0, :cond_2

    instance-of v0, p2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonDeserializer;

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter;->newFactoryWithMatchRawType(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    instance-of v0, p2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-static {p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;

    move-result-object v1

    check-cast p2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    invoke-static {v1, p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->newFactory(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object p0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final registerTypeAdapterFactory(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;"
        }
    .end annotation

    instance-of v0, p2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonSerializer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonDeserializer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    instance-of v0, p2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonDeserializer;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonSerializer;

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TreeTypeAdapter;->newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    instance-of v0, p2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->factories:Ljava/util/List;

    check-cast p2, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    invoke-static {p1, p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters;->newTypeHierarchyFactory(Ljava/lang/Class;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object p0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final serializeNulls()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->serializeNulls:Z

    return-object p0
.end method

.method public final serializeSpecialFloatingPointValues()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    return-object p0
.end method

.method public final setDateFormat(I)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;
    .locals 1

    iput p1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->dateStyle:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    return-object p0
.end method

.method public final setDateFormat(II)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;
    .locals 1

    iput p1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->dateStyle:I

    iput p2, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->timeStyle:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    return-object p0
.end method

.method public final setDateFormat(Ljava/lang/String;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    return-object p0
.end method

.method public final varargs setExclusionStrategies([Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/ExclusionStrategy;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;
    .locals 5

    const/4 v4, 0x1

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->excluder:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    invoke-virtual {v3, v2, v4, v4}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->withExclusionStrategy(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/ExclusionStrategy;ZZ)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->excluder:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final setFieldNamingPolicy(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/FieldNamingPolicy;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->fieldNamingPolicy:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/FieldNamingStrategy;

    return-object p0
.end method

.method public final setFieldNamingStrategy(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/FieldNamingStrategy;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->fieldNamingPolicy:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/FieldNamingStrategy;

    return-object p0
.end method

.method public final setLenient()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->lenient:Z

    return-object p0
.end method

.method public final setLongSerializationPolicy(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/LongSerializationPolicy;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->longSerializationPolicy:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/LongSerializationPolicy;

    return-object p0
.end method

.method public final setPrettyPrinting()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->prettyPrinting:Z

    return-object p0
.end method

.method public final setVersion(D)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->excluder:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->withVersion(D)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/GsonBuilder;->excluder:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    return-object p0
.end method
