.class public final Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

.field private static final IGNORE_VERSIONS:D = -1.0


# instance fields
.field private deserializationStrategies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/ExclusionStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private modifiers:I

.field private requireExpose:Z

.field private serializationStrategies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/ExclusionStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private serializeInnerClasses:Z

.field private version:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->DEFAULT:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->version:D

    const/16 v0, 0x88

    iput v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->modifiers:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->serializeInnerClasses:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    return-void
.end method

.method private isAnonymousOrLocal(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInnerClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->isStatic(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStatic(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidSince(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/annotations/Since;)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/annotations/Since;->value()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->version:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isValidUntil(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/annotations/Until;)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/annotations/Until;->value()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->version:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isValidVersion(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/annotations/Since;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/annotations/Until;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->isValidSince(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/annotations/Since;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->isValidUntil(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/annotations/Until;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final clone()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method protected final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->clone()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    move-result-object v0

    return-object v0
.end method

.method public final create(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;
    .locals 6
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

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->excludeClass(Ljava/lang/Class;Z)Z

    move-result v3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->excludeClass(Ljava/lang/Class;Z)Z

    move-result v2

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder$1;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder$1;-><init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;ZZLcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;)V

    goto :goto_0
.end method

.method public final disableInnerClassSerialization()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->clone()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->serializeInnerClasses:Z

    return-object v0
.end method

.method public final excludeClass(Ljava/lang/Class;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)Z"
        }
    .end annotation

    const/4 v2, 0x1

    iget-wide v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->version:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_0

    const-class v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/annotations/Since;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/annotations/Since;

    const-class v1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/annotations/Until;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/annotations/Until;

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->isValidVersion(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/annotations/Since;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/annotations/Until;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->serializeInnerClasses:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->isInnerClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->isAnonymousOrLocal(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/ExclusionStrategy;

    invoke-interface {v0, p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/ExclusionStrategy;->shouldSkipClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final excludeField(Ljava/lang/reflect/Field;Z)Z
    .locals 6

    const/4 v2, 0x1

    iget v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->modifiers:I

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->version:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_1

    const-class v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/annotations/Since;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/annotations/Since;

    const-class v1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/annotations/Until;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/annotations/Until;

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->isValidVersion(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/annotations/Since;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/annotations/Until;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->requireExpose:Z

    if-eqz v0, :cond_5

    const-class v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/annotations/Expose;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/annotations/Expose;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_4

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/annotations/Expose;->serialize()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/annotations/Expose;->deserialize()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_5
    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->serializeInnerClasses:Z

    if-nez v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->isInnerClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->isAnonymousOrLocal(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    if-eqz p2, :cond_9

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/FieldAttributes;

    invoke-direct {v1, p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/FieldAttributes;-><init>(Ljava/lang/reflect/Field;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/ExclusionStrategy;

    invoke-interface {v0, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/ExclusionStrategy;->shouldSkipField(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/FieldAttributes;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    goto :goto_1

    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public final excludeFieldsWithoutExposeAnnotation()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->clone()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->requireExpose:Z

    return-object v0
.end method

.method public final withExclusionStrategy(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/ExclusionStrategy;ZZ)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->clone()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    move-result-object v0

    if-eqz p2, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    iget-object v1, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p3, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    iget-object v1, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public final varargs withModifiers([I)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->clone()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    move-result-object v1

    iput v0, v1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->modifiers:I

    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, p1, v0

    iget v4, v1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->modifiers:I

    or-int/2addr v3, v4

    iput v3, v1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->modifiers:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final withVersion(D)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->clone()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;

    move-result-object v0

    iput-wide p1, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/Excluder;->version:D

    return-object v0
.end method
