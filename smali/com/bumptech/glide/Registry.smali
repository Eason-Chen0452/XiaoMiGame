.class public Lcom/bumptech/glide/Registry;
.super Ljava/lang/Object;
.source "Registry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/Registry$NoImageHeaderParserException;,
        Lcom/bumptech/glide/Registry$MissingComponentException;,
        Lcom/bumptech/glide/Registry$NoSourceEncoderAvailableException;,
        Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;,
        Lcom/bumptech/glide/Registry$NoModelLoaderAvailableException;
    }
.end annotation


# instance fields
.field private final dataRewinderRegistry:Lcom/bumptech/glide/load/data/DataRewinderRegistry;

.field private final decoderRegistry:Lcom/bumptech/glide/provider/ResourceDecoderRegistry;

.field private final encoderRegistry:Lcom/bumptech/glide/provider/EncoderRegistry;

.field private final exceptionListPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;>;"
        }
    .end annotation
.end field

.field private final imageHeaderParserRegistry:Lcom/bumptech/glide/provider/ImageHeaderParserRegistry;

.field private final loadPathCache:Lcom/bumptech/glide/provider/LoadPathCache;

.field private final modelLoaderRegistry:Lcom/bumptech/glide/load/model/ModelLoaderRegistry;

.field private final modelToResourceClassCache:Lcom/bumptech/glide/provider/ModelToResourceClassCache;

.field private final resourceEncoderRegistry:Lcom/bumptech/glide/provider/ResourceEncoderRegistry;

.field private final transcoderRegistry:Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/bumptech/glide/provider/ModelToResourceClassCache;

    invoke-direct {v0}, Lcom/bumptech/glide/provider/ModelToResourceClassCache;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->modelToResourceClassCache:Lcom/bumptech/glide/provider/ModelToResourceClassCache;

    .line 43
    new-instance v0, Lcom/bumptech/glide/provider/LoadPathCache;

    invoke-direct {v0}, Lcom/bumptech/glide/provider/LoadPathCache;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->loadPathCache:Lcom/bumptech/glide/provider/LoadPathCache;

    .line 44
    invoke-static {}, Lcom/bumptech/glide/util/pool/FactoryPools;->threadSafeList()Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->exceptionListPool:Landroid/support/v4/util/Pools$Pool;

    .line 47
    new-instance v0, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;

    iget-object v1, p0, Lcom/bumptech/glide/Registry;->exceptionListPool:Landroid/support/v4/util/Pools$Pool;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;-><init>(Landroid/support/v4/util/Pools$Pool;)V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->modelLoaderRegistry:Lcom/bumptech/glide/load/model/ModelLoaderRegistry;

    .line 48
    new-instance v0, Lcom/bumptech/glide/provider/EncoderRegistry;

    invoke-direct {v0}, Lcom/bumptech/glide/provider/EncoderRegistry;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->encoderRegistry:Lcom/bumptech/glide/provider/EncoderRegistry;

    .line 49
    new-instance v0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;

    invoke-direct {v0}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->decoderRegistry:Lcom/bumptech/glide/provider/ResourceDecoderRegistry;

    .line 50
    new-instance v0, Lcom/bumptech/glide/provider/ResourceEncoderRegistry;

    invoke-direct {v0}, Lcom/bumptech/glide/provider/ResourceEncoderRegistry;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->resourceEncoderRegistry:Lcom/bumptech/glide/provider/ResourceEncoderRegistry;

    .line 51
    new-instance v0, Lcom/bumptech/glide/load/data/DataRewinderRegistry;

    invoke-direct {v0}, Lcom/bumptech/glide/load/data/DataRewinderRegistry;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->dataRewinderRegistry:Lcom/bumptech/glide/load/data/DataRewinderRegistry;

    .line 52
    new-instance v0, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->transcoderRegistry:Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;

    .line 53
    new-instance v0, Lcom/bumptech/glide/provider/ImageHeaderParserRegistry;

    invoke-direct {v0}, Lcom/bumptech/glide/provider/ImageHeaderParserRegistry;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->imageHeaderParserRegistry:Lcom/bumptech/glide/provider/ImageHeaderParserRegistry;

    .line 54
    return-void
.end method

.method private getDecodePaths(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TData;>;",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Ljava/lang/Class",
            "<TTranscode;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/engine/DecodePath",
            "<TData;TTResource;TTranscode;>;>;"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TTResource;>;"
    .local p3, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TTranscode;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v7, "decodePaths":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/engine/DecodePath<TData;TTResource;TTranscode;>;>;"
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->decoderRegistry:Lcom/bumptech/glide/provider/ResourceDecoderRegistry;

    .line 154
    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->getResourceClasses(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v8

    .line 156
    .local v8, "registeredResourceClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<TTResource;>;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 157
    .local v2, "registeredResourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TTResource;>;"
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->transcoderRegistry:Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;

    .line 158
    invoke-virtual {v0, v2, p3}, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->getTranscodeClasses(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v9

    .line 160
    .local v9, "registeredTranscodeClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<TTranscode;>;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 162
    .local v3, "registeredTranscodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TTranscode;>;"
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->decoderRegistry:Lcom/bumptech/glide/provider/ResourceDecoderRegistry;

    .line 163
    invoke-virtual {v0, p1, v2}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->getDecoders(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 164
    .local v4, "decoders":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/ResourceDecoder<TData;TTResource;>;>;"
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->transcoderRegistry:Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;

    .line 165
    invoke-virtual {v0, v2, v3}, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v5

    .line 166
    .local v5, "transcoder":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TTResource;TTranscode;>;"
    new-instance v0, Lcom/bumptech/glide/load/engine/DecodePath;

    iget-object v6, p0, Lcom/bumptech/glide/Registry;->exceptionListPool:Landroid/support/v4/util/Pools$Pool;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/load/engine/DecodePath;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Landroid/support/v4/util/Pools$Pool;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    .end local v2    # "registeredResourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TTResource;>;"
    .end local v3    # "registeredTranscodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TTranscode;>;"
    .end local v4    # "decoders":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/ResourceDecoder<TData;TTResource;>;>;"
    .end local v5    # "transcoder":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TTResource;TTranscode;>;"
    .end local v9    # "registeredTranscodeClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<TTranscode;>;>;"
    :cond_1
    return-object v7
.end method


# virtual methods
.method public append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TData;>;",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<TData;TTResource;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TTResource;>;"
    .local p3, "decoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<TData;TTResource;>;"
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->decoderRegistry:Lcom/bumptech/glide/provider/ResourceDecoderRegistry;

    invoke-virtual {v0, p3, p1, p2}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->append(Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 64
    return-object p0
.end method

.method public append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TModel;>;",
            "Ljava/lang/Class",
            "<TData;>;",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
            "<TModel;TData;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    .local p3, "factory":Lcom/bumptech/glide/load/model/ModelLoaderFactory;, "Lcom/bumptech/glide/load/model/ModelLoaderFactory<TModel;TData;>;"
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->modelLoaderRegistry:Lcom/bumptech/glide/load/model/ModelLoaderRegistry;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 114
    return-object p0
.end method

.method public getImageHeaderParsers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    iget-object v1, p0, Lcom/bumptech/glide/Registry;->imageHeaderParserRegistry:Lcom/bumptech/glide/provider/ImageHeaderParserRegistry;

    invoke-virtual {v1}, Lcom/bumptech/glide/provider/ImageHeaderParserRegistry;->getParsers()Ljava/util/List;

    move-result-object v0

    .line 234
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/ImageHeaderParser;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    new-instance v1, Lcom/bumptech/glide/Registry$NoImageHeaderParserException;

    invoke-direct {v1}, Lcom/bumptech/glide/Registry$NoImageHeaderParserException;-><init>()V

    throw v1

    .line 237
    :cond_0
    return-object v0
.end method

.method public getLoadPath(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/LoadPath;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TData;>;",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Ljava/lang/Class",
            "<TTranscode;>;)",
            "Lcom/bumptech/glide/load/engine/LoadPath",
            "<TData;TTResource;TTranscode;>;"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TTResource;>;"
    .local p3, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TTranscode;>;"
    iget-object v1, p0, Lcom/bumptech/glide/Registry;->loadPathCache:Lcom/bumptech/glide/provider/LoadPathCache;

    .line 132
    invoke-virtual {v1, p1, p2, p3}, Lcom/bumptech/glide/provider/LoadPathCache;->get(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/LoadPath;

    move-result-object v0

    .line 133
    .local v0, "result":Lcom/bumptech/glide/load/engine/LoadPath;, "Lcom/bumptech/glide/load/engine/LoadPath<TData;TTResource;TTranscode;>;"
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/Registry;->loadPathCache:Lcom/bumptech/glide/provider/LoadPathCache;

    invoke-virtual {v1, p1, p2, p3}, Lcom/bumptech/glide/provider/LoadPathCache;->contains(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/Registry;->getDecodePaths(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 138
    .local v4, "decodePaths":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/engine/DecodePath<TData;TTResource;TTranscode;>;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    const/4 v0, 0x0

    .line 144
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/Registry;->loadPathCache:Lcom/bumptech/glide/provider/LoadPathCache;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/bumptech/glide/provider/LoadPathCache;->put(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/engine/LoadPath;)V

    .line 146
    .end local v4    # "decodePaths":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/engine/DecodePath<TData;TTResource;TTranscode;>;>;"
    :cond_0
    return-object v0

    .line 141
    .restart local v4    # "decodePaths":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/engine/DecodePath<TData;TTResource;TTranscode;>;>;"
    :cond_1
    new-instance v0, Lcom/bumptech/glide/load/engine/LoadPath;

    .end local v0    # "result":Lcom/bumptech/glide/load/engine/LoadPath;, "Lcom/bumptech/glide/load/engine/LoadPath<TData;TTResource;TTranscode;>;"
    iget-object v5, p0, Lcom/bumptech/glide/Registry;->exceptionListPool:Landroid/support/v4/util/Pools$Pool;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/LoadPath;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Landroid/support/v4/util/Pools$Pool;)V

    .restart local v0    # "result":Lcom/bumptech/glide/load/engine/LoadPath;, "Lcom/bumptech/glide/load/engine/LoadPath<TData;TTResource;TTranscode;>;"
    goto :goto_0
.end method

.method public getModelLoaders(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            ">(TModel;)",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TModel;*>;>;"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, "model":Ljava/lang/Object;, "TModel;"
    iget-object v1, p0, Lcom/bumptech/glide/Registry;->modelLoaderRegistry:Lcom/bumptech/glide/load/model/ModelLoaderRegistry;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->getModelLoaders(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 226
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/ModelLoader<TModel;*>;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    new-instance v1, Lcom/bumptech/glide/Registry$NoModelLoaderAvailableException;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/Registry$NoModelLoaderAvailableException;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 229
    :cond_0
    return-object v0
.end method

.method public getRegisteredResourceClasses(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TModel;>;",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Ljava/lang/Class",
            "<TTranscode;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TTResource;>;"
    .local p3, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TTranscode;>;"
    iget-object v6, p0, Lcom/bumptech/glide/Registry;->modelToResourceClassCache:Lcom/bumptech/glide/provider/ModelToResourceClassCache;

    invoke-virtual {v6, p1, p2}, Lcom/bumptech/glide/provider/ModelToResourceClassCache;->get(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    .line 177
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-nez v5, :cond_3

    .line 178
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .restart local v5    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    iget-object v6, p0, Lcom/bumptech/glide/Registry;->modelLoaderRegistry:Lcom/bumptech/glide/load/model/ModelLoaderRegistry;

    invoke-virtual {v6, p1}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->getDataClasses(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 180
    .local v1, "dataClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 181
    .local v0, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v7, p0, Lcom/bumptech/glide/Registry;->decoderRegistry:Lcom/bumptech/glide/provider/ResourceDecoderRegistry;

    .line 182
    invoke-virtual {v7, v0, p2}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->getResourceClasses(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 183
    .local v3, "registeredResourceClasses":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Class<*>;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 184
    .local v2, "registeredResourceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v8, p0, Lcom/bumptech/glide/Registry;->transcoderRegistry:Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;

    .line 185
    invoke-virtual {v8, v2, p3}, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->getTranscodeClasses(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 186
    .local v4, "registeredTranscodeClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<TTranscode;>;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 187
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    .end local v0    # "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "registeredResourceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "registeredResourceClasses":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Class<*>;>;"
    .end local v4    # "registeredTranscodeClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<TTranscode;>;>;"
    :cond_2
    iget-object v6, p0, Lcom/bumptech/glide/Registry;->modelToResourceClassCache:Lcom/bumptech/glide/provider/ModelToResourceClassCache;

    .line 192
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 191
    invoke-virtual {v6, p1, p2, v7}, Lcom/bumptech/glide/provider/ModelToResourceClassCache;->put(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)V

    .line 195
    .end local v1    # "dataClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :cond_3
    return-object v5
.end method

.method public getResultEncoder(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/ResourceEncoder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TX;>;)",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<TX;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TX;>;"
    iget-object v1, p0, Lcom/bumptech/glide/Registry;->resourceEncoderRegistry:Lcom/bumptech/glide/provider/ResourceEncoderRegistry;

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->getResourceClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/provider/ResourceEncoderRegistry;->get(Ljava/lang/Class;)Lcom/bumptech/glide/load/ResourceEncoder;

    move-result-object v0

    .line 205
    .local v0, "resourceEncoder":Lcom/bumptech/glide/load/ResourceEncoder;, "Lcom/bumptech/glide/load/ResourceEncoder<TX;>;"
    if-eqz v0, :cond_0

    .line 206
    return-object v0

    .line 208
    :cond_0
    new-instance v1, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->getResourceClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;-><init>(Ljava/lang/Class;)V

    throw v1
.end method

.method public getRewinder(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/DataRewinder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lcom/bumptech/glide/load/data/DataRewinder",
            "<TX;>;"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, "data":Ljava/lang/Object;, "TX;"
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->dataRewinderRegistry:Lcom/bumptech/glide/load/data/DataRewinderRegistry;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/data/DataRewinderRegistry;->build(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/DataRewinder;

    move-result-object v0

    return-object v0
.end method

.method public getSourceEncoder(Ljava/lang/Object;)Lcom/bumptech/glide/load/Encoder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lcom/bumptech/glide/load/Encoder",
            "<TX;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/Registry$NoSourceEncoderAvailableException;
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "data":Ljava/lang/Object;, "TX;"
    iget-object v1, p0, Lcom/bumptech/glide/Registry;->encoderRegistry:Lcom/bumptech/glide/provider/EncoderRegistry;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/provider/EncoderRegistry;->getEncoder(Ljava/lang/Class;)Lcom/bumptech/glide/load/Encoder;

    move-result-object v0

    .line 214
    .local v0, "encoder":Lcom/bumptech/glide/load/Encoder;, "Lcom/bumptech/glide/load/Encoder<TX;>;"
    if-eqz v0, :cond_0

    .line 215
    return-object v0

    .line 217
    :cond_0
    new-instance v1, Lcom/bumptech/glide/Registry$NoSourceEncoderAvailableException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bumptech/glide/Registry$NoSourceEncoderAvailableException;-><init>(Ljava/lang/Class;)V

    throw v1
.end method

.method public isResourceEncoderAvailable(Lcom/bumptech/glide/load/engine/Resource;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<*>;"
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->resourceEncoderRegistry:Lcom/bumptech/glide/provider/ResourceEncoderRegistry;

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->getResourceClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/provider/ResourceEncoderRegistry;->get(Ljava/lang/Class;)Lcom/bumptech/glide/load/ResourceEncoder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TData;>;",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<TData;TTResource;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TTResource;>;"
    .local p3, "decoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<TData;TTResource;>;"
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->decoderRegistry:Lcom/bumptech/glide/provider/ResourceDecoderRegistry;

    invoke-virtual {v0, p3, p1, p2}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->prepend(Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 70
    return-object p0
.end method

.method public prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TModel;>;",
            "Ljava/lang/Class",
            "<TData;>;",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
            "<TModel;TData;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    .local p3, "factory":Lcom/bumptech/glide/load/model/ModelLoaderFactory;, "Lcom/bumptech/glide/load/model/ModelLoaderFactory<TModel;TData;>;"
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->modelLoaderRegistry:Lcom/bumptech/glide/load/model/ModelLoaderRegistry;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 120
    return-object p0
.end method

.method public register(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/Registry;
    .locals 1
    .param p1, "parser"    # Lcom/bumptech/glide/load/ImageHeaderParser;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->imageHeaderParserRegistry:Lcom/bumptech/glide/provider/ImageHeaderParserRegistry;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/provider/ImageHeaderParserRegistry;->add(Lcom/bumptech/glide/load/ImageHeaderParser;)V

    .line 92
    return-object p0
.end method

.method public register(Lcom/bumptech/glide/load/data/DataRewinder$Factory;)Lcom/bumptech/glide/Registry;
    .locals 1
    .param p1, "factory"    # Lcom/bumptech/glide/load/data/DataRewinder$Factory;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->dataRewinderRegistry:Lcom/bumptech/glide/load/data/DataRewinderRegistry;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/data/DataRewinderRegistry;->register(Lcom/bumptech/glide/load/data/DataRewinder$Factory;)V

    .line 81
    return-object p0
.end method

.method public register(Ljava/lang/Class;Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TData;>;",
            "Lcom/bumptech/glide/load/Encoder",
            "<TData;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    .local p2, "encoder":Lcom/bumptech/glide/load/Encoder;, "Lcom/bumptech/glide/load/Encoder<TData;>;"
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->encoderRegistry:Lcom/bumptech/glide/provider/EncoderRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/provider/EncoderRegistry;->add(Ljava/lang/Class;Lcom/bumptech/glide/load/Encoder;)V

    .line 58
    return-object p0
.end method

.method public register(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<TTResource;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TTResource;>;"
    .local p2, "encoder":Lcom/bumptech/glide/load/ResourceEncoder;, "Lcom/bumptech/glide/load/ResourceEncoder<TTResource;>;"
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->resourceEncoderRegistry:Lcom/bumptech/glide/provider/ResourceEncoderRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/provider/ResourceEncoderRegistry;->add(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)V

    .line 76
    return-object p0
.end method

.method public register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Ljava/lang/Class",
            "<TTranscode;>;",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TTResource;TTranscode;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TTResource;>;"
    .local p2, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TTranscode;>;"
    .local p3, "transcoder":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TTResource;TTranscode;>;"
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->transcoderRegistry:Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V

    .line 87
    return-object p0
.end method

.method public replace(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TModel;>;",
            "Ljava/lang/Class",
            "<TData;>;",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
            "<TModel;TData;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    .local p3, "factory":Lcom/bumptech/glide/load/model/ModelLoaderFactory;, "Lcom/bumptech/glide/load/model/ModelLoaderFactory<TModel;TData;>;"
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->modelLoaderRegistry:Lcom/bumptech/glide/load/model/ModelLoaderRegistry;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->replace(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 126
    return-object p0
.end method
