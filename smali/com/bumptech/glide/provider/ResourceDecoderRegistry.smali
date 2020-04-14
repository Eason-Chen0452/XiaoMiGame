.class public Lcom/bumptech/glide/provider/ResourceDecoderRegistry;
.super Ljava/lang/Object;
.source "ResourceDecoderRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;
    }
.end annotation


# instance fields
.field private final decoders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry",
            "<**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->decoders:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public declared-synchronized append(Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<TT;TR;>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "decoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<TT;TR;>;"
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->decoders:Ljava/util/List;

    new-instance v1, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;

    invoke-direct {v1, p2, p3, p1}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDecoders(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<TT;TR;>;>;"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/ResourceDecoder<TT;TR;>;>;"
    iget-object v2, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->decoders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;

    .line 21
    .local v0, "entry":Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;, "Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<**>;"
    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;->handles(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 22
    iget-object v3, v0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 19
    .end local v0    # "entry":Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;, "Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<**>;"
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/ResourceDecoder<TT;TR;>;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 27
    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/ResourceDecoder<TT;TR;>;>;"
    :cond_1
    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized getResourceClasses(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<TR;>;>;"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<TR;>;>;"
    iget-object v2, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->decoders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;

    .line 35
    .local v0, "entry":Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;, "Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<**>;"
    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;->handles(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    iget-object v3, v0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;->resourceClass:Ljava/lang/Class;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 33
    .end local v0    # "entry":Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;, "Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<**>;"
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<TR;>;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 39
    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<TR;>;>;"
    :cond_1
    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized prepend(Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<TT;TR;>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "decoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<TT;TR;>;"
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->decoders:Ljava/util/List;

    const/4 v1, 0x0

    new-instance v2, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;

    invoke-direct {v2, p2, p3, p1}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
