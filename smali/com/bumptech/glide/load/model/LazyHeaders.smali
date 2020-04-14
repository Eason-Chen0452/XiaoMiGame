.class public final Lcom/bumptech/glide/load/model/LazyHeaders;
.super Ljava/lang/Object;
.source "LazyHeaders.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/Headers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;,
        Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    }
.end annotation


# instance fields
.field private volatile combinedHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/model/LazyHeaderFactory;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/model/LazyHeaderFactory;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/bumptech/glide/load/model/LazyHeaderFactory;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders;->headers:Ljava/util/Map;

    .line 25
    return-void
.end method

.method private generateHeaders()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    .local v0, "combinedHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/bumptech/glide/load/model/LazyHeaders;->headers:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 44
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/bumptech/glide/load/model/LazyHeaderFactory;>;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 46
    .local v2, "factories":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/LazyHeaderFactory;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    .line 47
    .local v7, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v7, :cond_2

    .line 48
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/model/LazyHeaderFactory;

    .line 49
    .local v3, "factory":Lcom/bumptech/glide/load/model/LazyHeaderFactory;
    invoke-interface {v3}, Lcom/bumptech/glide/load/model/LazyHeaderFactory;->buildHeader()Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, "header":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 51
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-eq v5, v10, :cond_1

    .line 53
    const/16 v10, 0x2c

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 57
    .end local v3    # "factory":Lcom/bumptech/glide/load/model/LazyHeaderFactory;
    .end local v4    # "header":Ljava/lang/String;
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 58
    .local v8, "values":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 59
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 63
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/bumptech/glide/load/model/LazyHeaderFactory;>;>;"
    .end local v2    # "factories":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/LazyHeaderFactory;>;"
    .end local v5    # "i":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "size":I
    .end local v8    # "values":Ljava/lang/String;
    :cond_3
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 75
    instance-of v1, p1, Lcom/bumptech/glide/load/model/LazyHeaders;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 76
    check-cast v0, Lcom/bumptech/glide/load/model/LazyHeaders;

    .line 77
    .local v0, "other":Lcom/bumptech/glide/load/model/LazyHeaders;
    iget-object v1, p0, Lcom/bumptech/glide/load/model/LazyHeaders;->headers:Ljava/util/Map;

    iget-object v2, v0, Lcom/bumptech/glide/load/model/LazyHeaders;->headers:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 79
    .end local v0    # "other":Lcom/bumptech/glide/load/model/LazyHeaders;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders;->combinedHeaders:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 30
    monitor-enter p0

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders;->combinedHeaders:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 32
    invoke-direct {p0}, Lcom/bumptech/glide/load/model/LazyHeaders;->generateHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders;->combinedHeaders:Ljava/util/Map;

    .line 34
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders;->combinedHeaders:Ljava/util/Map;

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LazyHeaders{headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/model/LazyHeaders;->headers:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
