.class public final Lcom/xiaomi/gson/internal/bind/ReflectiveTypeAdapterFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/gson/u;


# instance fields
.field private final a:Lcom/xiaomi/gson/internal/ConstructorConstructor;

.field private final b:Lcom/xiaomi/gson/g;

.field private final c:Lcom/xiaomi/gson/internal/Excluder;


# direct methods
.method public constructor <init>(Lcom/xiaomi/gson/internal/ConstructorConstructor;Lcom/xiaomi/gson/g;Lcom/xiaomi/gson/internal/Excluder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/gson/internal/bind/ReflectiveTypeAdapterFactory;->a:Lcom/xiaomi/gson/internal/ConstructorConstructor;

    iput-object p2, p0, Lcom/xiaomi/gson/internal/bind/ReflectiveTypeAdapterFactory;->b:Lcom/xiaomi/gson/g;

    iput-object p3, p0, Lcom/xiaomi/gson/internal/bind/ReflectiveTypeAdapterFactory;->c:Lcom/xiaomi/gson/internal/Excluder;

    return-void
.end method

.method private a(Ljava/lang/reflect/Field;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/xiaomi/gamecenter/sdk/bo;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/bo;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gson/internal/bind/ReflectiveTypeAdapterFactory;->b:Lcom/xiaomi/gson/g;

    invoke-interface {v0, p1}, Lcom/xiaomi/gson/g;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/bo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/bo;->b()[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    if-nez v0, :cond_2

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private a(Lcom/xiaomi/gson/Gson;Lcom/xiaomi/gamecenter/sdk/br;Ljava/lang/Class;)Ljava/util/Map;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gson/Gson;",
            "Lcom/xiaomi/gamecenter/sdk/br",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/gson/internal/bind/j;",
            ">;"
        }
    .end annotation

    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v12

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/xiaomi/gamecenter/sdk/br;->getType()Ljava/lang/reflect/Type;

    move-result-object v14

    :goto_1
    const-class v1, Ljava/lang/Object;

    move-object/from16 v0, p3

    if-eq v0, v1, :cond_6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v15

    array-length v0, v15

    move/from16 v16, v0

    const/4 v1, 0x0

    move v13, v1

    :goto_2
    move/from16 v0, v16

    if-ge v13, v0, :cond_5

    aget-object v7, v15, v13

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1}, Lcom/xiaomi/gson/internal/bind/ReflectiveTypeAdapterFactory;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v4

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1}, Lcom/xiaomi/gson/internal/bind/ReflectiveTypeAdapterFactory;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v5

    if-nez v4, :cond_1

    if-eqz v5, :cond_4

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual/range {p2 .. p2}, Lcom/xiaomi/gamecenter/sdk/br;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lcom/xiaomi/gson/internal/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v17

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/xiaomi/gson/internal/bind/ReflectiveTypeAdapterFactory;->a(Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v18

    const/4 v10, 0x0

    const/4 v1, 0x0

    move v11, v1

    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_3

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v11, :cond_2

    const/4 v4, 0x0

    :cond_2
    invoke-static/range {v17 .. v17}, Lcom/xiaomi/gamecenter/sdk/br;->get(Ljava/lang/reflect/Type;)Lcom/xiaomi/gamecenter/sdk/br;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xiaomi/gamecenter/sdk/br;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/gson/internal/ai;->a(Ljava/lang/reflect/Type;)Z

    move-result v9

    new-instance v1, Lcom/xiaomi/gson/internal/bind/h;

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v9}, Lcom/xiaomi/gson/internal/bind/h;-><init>(Lcom/xiaomi/gson/internal/bind/ReflectiveTypeAdapterFactory;Ljava/lang/String;ZZLcom/xiaomi/gson/Gson;Ljava/lang/reflect/Field;Lcom/xiaomi/gamecenter/sdk/br;Z)V

    invoke-interface {v12, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/gson/internal/bind/j;

    if-nez v10, :cond_7

    :goto_4
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    move-object v10, v1

    goto :goto_3

    :cond_3
    if-eqz v10, :cond_4

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " declares multiple JSON fields named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v10, Lcom/xiaomi/gson/internal/bind/j;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    add-int/lit8 v1, v13, 0x1

    move v13, v1

    goto/16 :goto_2

    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/xiaomi/gamecenter/sdk/br;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lcom/xiaomi/gson/internal/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/br;->get(Ljava/lang/reflect/Type;)Lcom/xiaomi/gamecenter/sdk/br;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Lcom/xiaomi/gamecenter/sdk/br;->getRawType()Ljava/lang/Class;

    move-result-object p3

    goto/16 :goto_1

    :cond_6
    move-object v1, v12

    goto/16 :goto_0

    :cond_7
    move-object v1, v10

    goto :goto_4
.end method

.method private a(Ljava/lang/reflect/Field;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gson/internal/bind/ReflectiveTypeAdapterFactory;->c:Lcom/xiaomi/gson/internal/Excluder;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/xiaomi/gson/internal/Excluder;->a(Ljava/lang/Class;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/gson/internal/Excluder;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/xiaomi/gson/Gson;Lcom/xiaomi/gamecenter/sdk/br;)Lcom/xiaomi/gson/TypeAdapter;
    .locals 3
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

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/br;->getRawType()Ljava/lang/Class;

    move-result-object v1

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gson/internal/bind/ReflectiveTypeAdapterFactory;->a:Lcom/xiaomi/gson/internal/ConstructorConstructor;

    invoke-virtual {v0, p2}, Lcom/xiaomi/gson/internal/ConstructorConstructor;->a(Lcom/xiaomi/gamecenter/sdk/br;)Lcom/xiaomi/gson/internal/ah;

    move-result-object v2

    new-instance v0, Lcom/xiaomi/gson/internal/bind/i;

    invoke-direct {p0, p1, p2, v1}, Lcom/xiaomi/gson/internal/bind/ReflectiveTypeAdapterFactory;->a(Lcom/xiaomi/gson/Gson;Lcom/xiaomi/gamecenter/sdk/br;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/xiaomi/gson/internal/bind/i;-><init>(Lcom/xiaomi/gson/internal/ah;Ljava/util/Map;)V

    goto :goto_0
.end method

.method final a(Lcom/xiaomi/gson/Gson;Ljava/lang/reflect/Field;Lcom/xiaomi/gamecenter/sdk/br;)Lcom/xiaomi/gson/TypeAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gson/Gson;",
            "Ljava/lang/reflect/Field;",
            "Lcom/xiaomi/gamecenter/sdk/br",
            "<*>;)",
            "Lcom/xiaomi/gson/TypeAdapter",
            "<*>;"
        }
    .end annotation

    const-class v0, Lcom/xiaomi/gamecenter/sdk/bn;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/bn;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/gson/internal/bind/ReflectiveTypeAdapterFactory;->a:Lcom/xiaomi/gson/internal/ConstructorConstructor;

    invoke-static {v1, p1, p3, v0}, Lcom/xiaomi/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->a(Lcom/xiaomi/gson/internal/ConstructorConstructor;Lcom/xiaomi/gson/Gson;Lcom/xiaomi/gamecenter/sdk/br;Lcom/xiaomi/gamecenter/sdk/bn;)Lcom/xiaomi/gson/TypeAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p3}, Lcom/xiaomi/gson/Gson;->a(Lcom/xiaomi/gamecenter/sdk/br;)Lcom/xiaomi/gson/TypeAdapter;

    move-result-object v0

    goto :goto_0
.end method
