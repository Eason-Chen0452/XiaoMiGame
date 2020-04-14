.class public final Lcom/xiaomi/gson/internal/LinkedHashTreeMap;
.super Ljava/util/AbstractMap;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic g:Z

.field private static final h:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field b:[Lcom/xiaomi/gson/internal/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/xiaomi/gson/internal/z",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final c:Lcom/xiaomi/gson/internal/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/gson/internal/z",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field d:I

.field e:I

.field f:I

.field private i:Lcom/xiaomi/gson/internal/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/gson/internal/LinkedHashTreeMap",
            "<TK;TV;>.com/xiaomi/gson/internal/u;"
        }
    .end annotation
.end field

.field private j:Lcom/xiaomi/gson/internal/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/gson/internal/LinkedHashTreeMap",
            "<TK;TV;>.com/xiaomi/gson/internal/w;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->g:Z

    new-instance v0, Lcom/xiaomi/gson/internal/r;

    invoke-direct {v0}, Lcom/xiaomi/gson/internal/r;-><init>()V

    sput-object v0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->h:Ljava/util/Comparator;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->h:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput v0, p0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->d:I

    iput v0, p0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->e:I

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->a:Ljava/util/Comparator;

    new-instance v0, Lcom/xiaomi/gson/internal/z;

    invoke-direct {v0}, Lcom/xiaomi/gson/internal/z;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->c:Lcom/xiaomi/gson/internal/z;

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/xiaomi/gson/internal/z;

    iput-object v0, p0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->b:[Lcom/xiaomi/gson/internal/z;

    iget-object v0, p0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->b:[Lcom/xiaomi/gson/internal/z;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->b:[Lcom/xiaomi/gson/internal/z;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->f:I

    return-void

    :cond_0
    sget-object p1, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->h:Ljava/util/Comparator;

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;Z)Lcom/xiaomi/gson/internal/z;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/xiaomi/gson/internal/z",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v7, p0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->a:Ljava/util/Comparator;

    iget-object v8, p0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->b:[Lcom/xiaomi/gson/internal/z;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x14

    ushr-int/lit8 v3, v0, 0xc

    xor-int/2addr v1, v3

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x7

    xor-int/2addr v1, v0

    ushr-int/lit8 v0, v0, 0x4

    xor-int v3, v1, v0

    array-length v0, v8

    add-int/lit8 v0, v0, -0x1

    and-int v9, v3, v0

    aget-object v1, v8, v9

    const/4 v0, 0x0

    if-eqz v1, :cond_a

    sget-object v0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->h:Ljava/util/Comparator;

    if-ne v7, v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v4, v1, Lcom/xiaomi/gson/internal/z;->f:Ljava/lang/Object;

    invoke-interface {v0, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    :goto_1
    if-nez v4, :cond_3

    move-object v2, v1

    :cond_0
    :goto_2
    return-object v2

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    iget-object v4, v1, Lcom/xiaomi/gson/internal/z;->f:Ljava/lang/Object;

    invoke-interface {v7, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    goto :goto_1

    :cond_3
    if-gez v4, :cond_4

    iget-object v5, v1, Lcom/xiaomi/gson/internal/z;->b:Lcom/xiaomi/gson/internal/z;

    :goto_3
    if-eqz v5, :cond_5

    move-object v1, v5

    goto :goto_0

    :cond_4
    iget-object v5, v1, Lcom/xiaomi/gson/internal/z;->c:Lcom/xiaomi/gson/internal/z;

    goto :goto_3

    :cond_5
    move v6, v4

    :goto_4
    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->c:Lcom/xiaomi/gson/internal/z;

    if-nez v1, :cond_8

    sget-object v0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->h:Ljava/util/Comparator;

    if-ne v7, v0, :cond_6

    instance-of v0, p1, Ljava/lang/Comparable;

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not Comparable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lcom/xiaomi/gson/internal/z;

    iget-object v5, v4, Lcom/xiaomi/gson/internal/z;->e:Lcom/xiaomi/gson/internal/z;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gson/internal/z;-><init>(Lcom/xiaomi/gson/internal/z;Ljava/lang/Object;ILcom/xiaomi/gson/internal/z;Lcom/xiaomi/gson/internal/z;)V

    aput-object v0, v8, v9

    :goto_5
    iget v1, p0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->d:I

    iget v2, p0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->f:I

    if-le v1, v2, :cond_7

    iget-object v1, p0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->b:[Lcom/xiaomi/gson/internal/z;

    invoke-static {v1}, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->a([Lcom/xiaomi/gson/internal/z;)[Lcom/xiaomi/gson/internal/z;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->b:[Lcom/xiaomi/gson/internal/z;

    iget-object v1, p0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->b:[Lcom/xiaomi/gson/internal/z;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->b:[Lcom/xiaomi/gson/internal/z;

    array-length v2, v2

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    iput v1, p0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->f:I

    :cond_7
    iget v1, p0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->e:I

    move-object v2, v0

    goto :goto_2

    :cond_8
    new-instance v0, Lcom/xiaomi/gson/internal/z;

    iget-object v5, v4, Lcom/xiaomi/gson/internal/z;->e:Lcom/xiaomi/gson/internal/z;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gson/internal/z;-><init>(Lcom/xiaomi/gson/internal/z;Ljava/lang/Object;ILcom/xiaomi/gson/internal/z;Lcom/xiaomi/gson/internal/z;)V

    if-gez v6, :cond_9

    iput-object v0, v1, Lcom/xiaomi/gson/internal/z;->b:Lcom/xiaomi/gson/internal/z;

    :goto_6
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->b(Lcom/xiaomi/gson/internal/z;Z)V

    goto :goto_5

    :cond_9
    iput-object v0, v1, Lcom/xiaomi/gson/internal/z;->c:Lcom/xiaomi/gson/internal/z;

    goto :goto_6

    :cond_a
    move v6, v0

    goto :goto_4
.end method

.method private a(Lcom/xiaomi/gson/internal/z;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gson/internal/z",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/xiaomi/gson/internal/z;->b:Lcom/xiaomi/gson/internal/z;

    iget-object v3, p1, Lcom/xiaomi/gson/internal/z;->c:Lcom/xiaomi/gson/internal/z;

    iget-object v4, v3, Lcom/xiaomi/gson/internal/z;->b:Lcom/xiaomi/gson/internal/z;

    iget-object v5, v3, Lcom/xiaomi/gson/internal/z;->c:Lcom/xiaomi/gson/internal/z;

    iput-object v4, p1, Lcom/xiaomi/gson/internal/z;->c:Lcom/xiaomi/gson/internal/z;

    if-eqz v4, :cond_0

    iput-object p1, v4, Lcom/xiaomi/gson/internal/z;->a:Lcom/xiaomi/gson/internal/z;

    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->a(Lcom/xiaomi/gson/internal/z;Lcom/xiaomi/gson/internal/z;)V

    iput-object p1, v3, Lcom/xiaomi/gson/internal/z;->b:Lcom/xiaomi/gson/internal/z;

    iput-object v3, p1, Lcom/xiaomi/gson/internal/z;->a:Lcom/xiaomi/gson/internal/z;

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/xiaomi/gson/internal/z;->i:I

    move v2, v0

    :goto_0
    if-eqz v4, :cond_3

    iget v0, v4, Lcom/xiaomi/gson/internal/z;->i:I

    :goto_1
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/xiaomi/gson/internal/z;->i:I

    iget v0, p1, Lcom/xiaomi/gson/internal/z;->i:I

    if-eqz v5, :cond_1

    iget v1, v5, Lcom/xiaomi/gson/internal/z;->i:I

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/xiaomi/gson/internal/z;->i:I

    return-void

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private a(Lcom/xiaomi/gson/internal/z;Lcom/xiaomi/gson/internal/z;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gson/internal/z",
            "<TK;TV;>;",
            "Lcom/xiaomi/gson/internal/z",
            "<TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/xiaomi/gson/internal/z;->a:Lcom/xiaomi/gson/internal/z;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/xiaomi/gson/internal/z;->a:Lcom/xiaomi/gson/internal/z;

    if-eqz p2, :cond_0

    iput-object v0, p2, Lcom/xiaomi/gson/internal/z;->a:Lcom/xiaomi/gson/internal/z;

    :cond_0
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/xiaomi/gson/internal/z;->b:Lcom/xiaomi/gson/internal/z;

    if-ne v1, p1, :cond_1

    iput-object p2, v0, Lcom/xiaomi/gson/internal/z;->b:Lcom/xiaomi/gson/internal/z;

    :goto_0
    return-void

    :cond_1
    sget-boolean v1, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->g:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/xiaomi/gson/internal/z;->c:Lcom/xiaomi/gson/internal/z;

    if-eq v1, p1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    iput-object p2, v0, Lcom/xiaomi/gson/internal/z;->c:Lcom/xiaomi/gson/internal/z;

    goto :goto_0

    :cond_3
    iget v0, p1, Lcom/xiaomi/gson/internal/z;->g:I

    iget-object v1, p0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->b:[Lcom/xiaomi/gson/internal/z;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->b:[Lcom/xiaomi/gson/internal/z;

    aput-object p2, v1, v0

    goto :goto_0
.end method

.method private static a([Lcom/xiaomi/gson/internal/z;)[Lcom/xiaomi/gson/internal/z;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/xiaomi/gson/internal/z",
            "<TK;TV;>;)[",
            "Lcom/xiaomi/gson/internal/z",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    array-length v5, p0

    mul-int/lit8 v0, v5, 0x2

    new-array v6, v0, [Lcom/xiaomi/gson/internal/z;

    new-instance v7, Lcom/xiaomi/gson/internal/t;

    invoke-direct {v7}, Lcom/xiaomi/gson/internal/t;-><init>()V

    new-instance v8, Lcom/xiaomi/gson/internal/s;

    invoke-direct {v8}, Lcom/xiaomi/gson/internal/s;-><init>()V

    new-instance v9, Lcom/xiaomi/gson/internal/s;

    invoke-direct {v9}, Lcom/xiaomi/gson/internal/s;-><init>()V

    move v4, v1

    :goto_0
    if-ge v4, v5, :cond_7

    aget-object v10, p0, v4

    if-eqz v10, :cond_4

    invoke-virtual {v7, v10}, Lcom/xiaomi/gson/internal/t;->a(Lcom/xiaomi/gson/internal/z;)V

    move v0, v1

    move v2, v1

    :goto_1
    invoke-virtual {v7}, Lcom/xiaomi/gson/internal/t;->a()Lcom/xiaomi/gson/internal/z;

    move-result-object v11

    if-eqz v11, :cond_1

    iget v11, v11, Lcom/xiaomi/gson/internal/z;->g:I

    and-int/2addr v11, v5

    if-nez v11, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v8, v2}, Lcom/xiaomi/gson/internal/s;->a(I)V

    invoke-virtual {v9, v0}, Lcom/xiaomi/gson/internal/s;->a(I)V

    invoke-virtual {v7, v10}, Lcom/xiaomi/gson/internal/t;->a(Lcom/xiaomi/gson/internal/z;)V

    :goto_2
    invoke-virtual {v7}, Lcom/xiaomi/gson/internal/t;->a()Lcom/xiaomi/gson/internal/z;

    move-result-object v10

    if-eqz v10, :cond_3

    iget v11, v10, Lcom/xiaomi/gson/internal/z;->g:I

    and-int/2addr v11, v5

    if-nez v11, :cond_2

    invoke-virtual {v8, v10}, Lcom/xiaomi/gson/internal/s;->a(Lcom/xiaomi/gson/internal/z;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v9, v10}, Lcom/xiaomi/gson/internal/s;->a(Lcom/xiaomi/gson/internal/z;)V

    goto :goto_2

    :cond_3
    if-lez v2, :cond_5

    invoke-virtual {v8}, Lcom/xiaomi/gson/internal/s;->a()Lcom/xiaomi/gson/internal/z;

    move-result-object v2

    :goto_3
    aput-object v2, v6, v4

    add-int v2, v4, v5

    if-lez v0, :cond_6

    invoke-virtual {v9}, Lcom/xiaomi/gson/internal/s;->a()Lcom/xiaomi/gson/internal/z;

    move-result-object v0

    :goto_4
    aput-object v0, v6, v2

    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_5
    move-object v2, v3

    goto :goto_3

    :cond_6
    move-object v0, v3

    goto :goto_4

    :cond_7
    return-object v6
.end method

.method private b(Ljava/lang/Object;)Lcom/xiaomi/gson/internal/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/xiaomi/gson/internal/z",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->a(Ljava/lang/Object;Z)Lcom/xiaomi/gson/internal/z;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b(Lcom/xiaomi/gson/internal/z;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gson/internal/z",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v3, p1, Lcom/xiaomi/gson/internal/z;->b:Lcom/xiaomi/gson/internal/z;

    iget-object v0, p1, Lcom/xiaomi/gson/internal/z;->c:Lcom/xiaomi/gson/internal/z;

    iget-object v4, v3, Lcom/xiaomi/gson/internal/z;->b:Lcom/xiaomi/gson/internal/z;

    iget-object v5, v3, Lcom/xiaomi/gson/internal/z;->c:Lcom/xiaomi/gson/internal/z;

    iput-object v5, p1, Lcom/xiaomi/gson/internal/z;->b:Lcom/xiaomi/gson/internal/z;

    if-eqz v5, :cond_0

    iput-object p1, v5, Lcom/xiaomi/gson/internal/z;->a:Lcom/xiaomi/gson/internal/z;

    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->a(Lcom/xiaomi/gson/internal/z;Lcom/xiaomi/gson/internal/z;)V

    iput-object p1, v3, Lcom/xiaomi/gson/internal/z;->c:Lcom/xiaomi/gson/internal/z;

    iput-object v3, p1, Lcom/xiaomi/gson/internal/z;->a:Lcom/xiaomi/gson/internal/z;

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/xiaomi/gson/internal/z;->i:I

    move v2, v0

    :goto_0
    if-eqz v5, :cond_3

    iget v0, v5, Lcom/xiaomi/gson/internal/z;->i:I

    :goto_1
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/xiaomi/gson/internal/z;->i:I

    iget v0, p1, Lcom/xiaomi/gson/internal/z;->i:I

    if-eqz v4, :cond_1

    iget v1, v4, Lcom/xiaomi/gson/internal/z;->i:I

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/xiaomi/gson/internal/z;->i:I

    return-void

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private b(Lcom/xiaomi/gson/internal/z;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gson/internal/z",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_a

    iget-object v3, p1, Lcom/xiaomi/gson/internal/z;->b:Lcom/xiaomi/gson/internal/z;

    iget-object v4, p1, Lcom/xiaomi/gson/internal/z;->c:Lcom/xiaomi/gson/internal/z;

    if-eqz v3, :cond_2

    iget v0, v3, Lcom/xiaomi/gson/internal/z;->i:I

    move v2, v0

    :goto_1
    if-eqz v4, :cond_3

    iget v0, v4, Lcom/xiaomi/gson/internal/z;->i:I

    :goto_2
    sub-int v5, v2, v0

    const/4 v6, -0x2

    if-ne v5, v6, :cond_8

    iget-object v3, v4, Lcom/xiaomi/gson/internal/z;->b:Lcom/xiaomi/gson/internal/z;

    iget-object v0, v4, Lcom/xiaomi/gson/internal/z;->c:Lcom/xiaomi/gson/internal/z;

    if-eqz v0, :cond_4

    iget v0, v0, Lcom/xiaomi/gson/internal/z;->i:I

    move v2, v0

    :goto_3
    if-eqz v3, :cond_5

    iget v0, v3, Lcom/xiaomi/gson/internal/z;->i:I

    :goto_4
    sub-int/2addr v0, v2

    if-eq v0, v7, :cond_0

    if-nez v0, :cond_6

    if-nez p2, :cond_6

    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->a(Lcom/xiaomi/gson/internal/z;)V

    :goto_5
    if-nez p2, :cond_a

    :cond_1
    :goto_6
    iget-object p1, p1, Lcom/xiaomi/gson/internal/z;->a:Lcom/xiaomi/gson/internal/z;

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    sget-boolean v2, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->g:Z

    if-nez v2, :cond_7

    if-eq v0, v8, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    invoke-direct {p0, v4}, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->b(Lcom/xiaomi/gson/internal/z;)V

    invoke-direct {p0, p1}, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->a(Lcom/xiaomi/gson/internal/z;)V

    goto :goto_5

    :cond_8
    const/4 v4, 0x2

    if-ne v5, v4, :cond_f

    iget-object v4, v3, Lcom/xiaomi/gson/internal/z;->b:Lcom/xiaomi/gson/internal/z;

    iget-object v0, v3, Lcom/xiaomi/gson/internal/z;->c:Lcom/xiaomi/gson/internal/z;

    if-eqz v0, :cond_b

    iget v0, v0, Lcom/xiaomi/gson/internal/z;->i:I

    move v2, v0

    :goto_7
    if-eqz v4, :cond_c

    iget v0, v4, Lcom/xiaomi/gson/internal/z;->i:I

    :goto_8
    sub-int/2addr v0, v2

    if-eq v0, v8, :cond_9

    if-nez v0, :cond_d

    if-nez p2, :cond_d

    :cond_9
    invoke-direct {p0, p1}, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->b(Lcom/xiaomi/gson/internal/z;)V

    :goto_9
    if-eqz p2, :cond_1

    :cond_a
    :goto_a
    return-void

    :cond_b
    move v2, v1

    goto :goto_7

    :cond_c
    move v0, v1

    goto :goto_8

    :cond_d
    sget-boolean v2, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->g:Z

    if-nez v2, :cond_e

    if-eq v0, v7, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    invoke-direct {p0, v3}, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->a(Lcom/xiaomi/gson/internal/z;)V

    invoke-direct {p0, p1}, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->b(Lcom/xiaomi/gson/internal/z;)V

    goto :goto_9

    :cond_f
    if-nez v5, :cond_10

    add-int/lit8 v0, v2, 0x1

    iput v0, p1, Lcom/xiaomi/gson/internal/z;->i:I

    if-eqz p2, :cond_1

    goto :goto_a

    :cond_10
    sget-boolean v3, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->g:Z

    if-nez v3, :cond_11

    if-eq v5, v7, :cond_11

    if-eq v5, v8, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_11
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/xiaomi/gson/internal/z;->i:I

    if-eqz p2, :cond_a

    goto :goto_6
.end method


# virtual methods
.method final a(Ljava/lang/Object;)Lcom/xiaomi/gson/internal/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/xiaomi/gson/internal/z",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->b(Ljava/lang/Object;)Lcom/xiaomi/gson/internal/z;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->a(Lcom/xiaomi/gson/internal/z;Z)V

    :cond_0
    return-object v0
.end method

.method final a(Ljava/util/Map$Entry;)Lcom/xiaomi/gson/internal/z;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;)",
            "Lcom/xiaomi/gson/internal/z",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->b(Ljava/lang/Object;)Lcom/xiaomi/gson/internal/z;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/xiaomi/gson/internal/z;->h:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_0

    if-eqz v3, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_2

    :goto_1
    if-eqz v1, :cond_3

    :goto_2
    return-object v0

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method final a(Lcom/xiaomi/gson/internal/z;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gson/internal/z",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/xiaomi/gson/internal/z;->e:Lcom/xiaomi/gson/internal/z;

    iget-object v1, p1, Lcom/xiaomi/gson/internal/z;->d:Lcom/xiaomi/gson/internal/z;

    iput-object v1, v0, Lcom/xiaomi/gson/internal/z;->d:Lcom/xiaomi/gson/internal/z;

    iget-object v0, p1, Lcom/xiaomi/gson/internal/z;->d:Lcom/xiaomi/gson/internal/z;

    iget-object v1, p1, Lcom/xiaomi/gson/internal/z;->e:Lcom/xiaomi/gson/internal/z;

    iput-object v1, v0, Lcom/xiaomi/gson/internal/z;->e:Lcom/xiaomi/gson/internal/z;

    iput-object v5, p1, Lcom/xiaomi/gson/internal/z;->e:Lcom/xiaomi/gson/internal/z;

    iput-object v5, p1, Lcom/xiaomi/gson/internal/z;->d:Lcom/xiaomi/gson/internal/z;

    :cond_0
    iget-object v3, p1, Lcom/xiaomi/gson/internal/z;->b:Lcom/xiaomi/gson/internal/z;

    iget-object v0, p1, Lcom/xiaomi/gson/internal/z;->c:Lcom/xiaomi/gson/internal/z;

    iget-object v1, p1, Lcom/xiaomi/gson/internal/z;->a:Lcom/xiaomi/gson/internal/z;

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    iget v1, v3, Lcom/xiaomi/gson/internal/z;->i:I

    iget v4, v0, Lcom/xiaomi/gson/internal/z;->i:I

    if-le v1, v4, :cond_2

    iget-object v1, v3, Lcom/xiaomi/gson/internal/z;->c:Lcom/xiaomi/gson/internal/z;

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_3

    iget-object v3, v1, Lcom/xiaomi/gson/internal/z;->c:Lcom/xiaomi/gson/internal/z;

    move-object v0, v1

    move-object v1, v3

    goto :goto_0

    :cond_1
    move-object v0, v1

    :cond_2
    iget-object v1, v0, Lcom/xiaomi/gson/internal/z;->b:Lcom/xiaomi/gson/internal/z;

    if-nez v1, :cond_1

    :cond_3
    invoke-virtual {p0, v0, v2}, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->a(Lcom/xiaomi/gson/internal/z;Z)V

    iget-object v3, p1, Lcom/xiaomi/gson/internal/z;->b:Lcom/xiaomi/gson/internal/z;

    if-eqz v3, :cond_8

    iget v1, v3, Lcom/xiaomi/gson/internal/z;->i:I

    iput-object v3, v0, Lcom/xiaomi/gson/internal/z;->b:Lcom/xiaomi/gson/internal/z;

    iput-object v0, v3, Lcom/xiaomi/gson/internal/z;->a:Lcom/xiaomi/gson/internal/z;

    iput-object v5, p1, Lcom/xiaomi/gson/internal/z;->b:Lcom/xiaomi/gson/internal/z;

    :goto_1
    iget-object v3, p1, Lcom/xiaomi/gson/internal/z;->c:Lcom/xiaomi/gson/internal/z;

    if-eqz v3, :cond_4

    iget v2, v3, Lcom/xiaomi/gson/internal/z;->i:I

    iput-object v3, v0, Lcom/xiaomi/gson/internal/z;->c:Lcom/xiaomi/gson/internal/z;

    iput-object v0, v3, Lcom/xiaomi/gson/internal/z;->a:Lcom/xiaomi/gson/internal/z;

    iput-object v5, p1, Lcom/xiaomi/gson/internal/z;->c:Lcom/xiaomi/gson/internal/z;

    :cond_4
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/xiaomi/gson/internal/z;->i:I

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->a(Lcom/xiaomi/gson/internal/z;Lcom/xiaomi/gson/internal/z;)V

    :goto_2
    return-void

    :cond_5
    if-eqz v3, :cond_6

    invoke-direct {p0, p1, v3}, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->a(Lcom/xiaomi/gson/internal/z;Lcom/xiaomi/gson/internal/z;)V

    iput-object v5, p1, Lcom/xiaomi/gson/internal/z;->b:Lcom/xiaomi/gson/internal/z;

    :goto_3
    invoke-direct {p0, v1, v2}, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->b(Lcom/xiaomi/gson/internal/z;Z)V

    iget v0, p0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->d:I

    iget v0, p0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->e:I

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->a(Lcom/xiaomi/gson/internal/z;Lcom/xiaomi/gson/internal/z;)V

    iput-object v5, p1, Lcom/xiaomi/gson/internal/z;->c:Lcom/xiaomi/gson/internal/z;

    goto :goto_3

    :cond_7
    invoke-direct {p0, p1, v5}, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->a(Lcom/xiaomi/gson/internal/z;Lcom/xiaomi/gson/internal/z;)V

    goto :goto_3

    :cond_8
    move v1, v2

    goto :goto_1
.end method

.method public final clear()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->b:[Lcom/xiaomi/gson/internal/z;

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->d:I

    iget v0, p0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->e:I

    iget-object v2, p0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->c:Lcom/xiaomi/gson/internal/z;

    iget-object v0, v2, Lcom/xiaomi/gson/internal/z;->d:Lcom/xiaomi/gson/internal/z;

    :goto_0
    if-eq v0, v2, :cond_0

    iget-object v1, v0, Lcom/xiaomi/gson/internal/z;->d:Lcom/xiaomi/gson/internal/z;

    iput-object v3, v0, Lcom/xiaomi/gson/internal/z;->e:Lcom/xiaomi/gson/internal/z;

    iput-object v3, v0, Lcom/xiaomi/gson/internal/z;->d:Lcom/xiaomi/gson/internal/z;

    move-object v0, v1

    goto :goto_0

    :cond_0
    iput-object v2, v2, Lcom/xiaomi/gson/internal/z;->e:Lcom/xiaomi/gson/internal/z;

    iput-object v2, v2, Lcom/xiaomi/gson/internal/z;->d:Lcom/xiaomi/gson/internal/z;

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->b(Ljava/lang/Object;)Lcom/xiaomi/gson/internal/z;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->i:Lcom/xiaomi/gson/internal/u;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/xiaomi/gson/internal/u;

    invoke-direct {v0, p0}, Lcom/xiaomi/gson/internal/u;-><init>(Lcom/xiaomi/gson/internal/LinkedHashTreeMap;)V

    iput-object v0, p0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->i:Lcom/xiaomi/gson/internal/u;

    goto :goto_0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->b(Ljava/lang/Object;)Lcom/xiaomi/gson/internal/z;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/xiaomi/gson/internal/z;->h:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->j:Lcom/xiaomi/gson/internal/w;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/xiaomi/gson/internal/w;

    invoke-direct {v0, p0}, Lcom/xiaomi/gson/internal/w;-><init>(Lcom/xiaomi/gson/internal/LinkedHashTreeMap;)V

    iput-object v0, p0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->j:Lcom/xiaomi/gson/internal/w;

    goto :goto_0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->a(Ljava/lang/Object;Z)Lcom/xiaomi/gson/internal/z;

    move-result-object v0

    iget-object v1, v0, Lcom/xiaomi/gson/internal/z;->h:Ljava/lang/Object;

    iput-object p2, v0, Lcom/xiaomi/gson/internal/z;->h:Ljava/lang/Object;

    return-object v1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->a(Ljava/lang/Object;)Lcom/xiaomi/gson/internal/z;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/xiaomi/gson/internal/z;->h:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->d:I

    return v0
.end method
