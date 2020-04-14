.class public final Lcom/bumptech/glide/GlideBuilder;
.super Ljava/lang/Object;
.source "GlideBuilder.java"


# instance fields
.field private arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field private bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private connectivityMonitorFactory:Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

.field private defaultRequestOptions:Lcom/bumptech/glide/request/RequestOptions;

.field private diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field private diskCacheFactory:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

.field private engine:Lcom/bumptech/glide/load/engine/Engine;

.field private logLevel:I

.field private memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

.field private memorySizeCalculator:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

.field private requestManagerFactory:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private sourceExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x4

    iput v0, p0, Lcom/bumptech/glide/GlideBuilder;->logLevel:I

    .line 38
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->defaultRequestOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/bumptech/glide/Glide;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->sourceExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    if-nez v0, :cond_0

    .line 268
    invoke-static {}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->newSourceExecutor()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->sourceExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    if-nez v0, :cond_1

    .line 272
    invoke-static {}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->newDiskCacheExecutor()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->memorySizeCalculator:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    if-nez v0, :cond_2

    .line 276
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->build()Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->memorySizeCalculator:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->connectivityMonitorFactory:Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

    if-nez v0, :cond_3

    .line 280
    new-instance v0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitorFactory;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitorFactory;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->connectivityMonitorFactory:Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

    .line 283
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    if-nez v0, :cond_4

    .line 284
    iget-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->memorySizeCalculator:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->getBitmapPoolSize()I

    move-result v10

    .line 285
    .local v10, "size":I
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;

    invoke-direct {v0, v10}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 288
    .end local v10    # "size":I
    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    if-nez v0, :cond_5

    .line 289
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

    iget-object v1, p0, Lcom/bumptech/glide/GlideBuilder;->memorySizeCalculator:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->getArrayPoolSizeInBytes()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 292
    :cond_5
    iget-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    if-nez v0, :cond_6

    .line 293
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;

    iget-object v1, p0, Lcom/bumptech/glide/GlideBuilder;->memorySizeCalculator:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->getMemoryCacheSize()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 296
    :cond_6
    iget-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->diskCacheFactory:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    if-nez v0, :cond_7

    .line 297
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->diskCacheFactory:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    .line 300
    :cond_7
    iget-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->engine:Lcom/bumptech/glide/load/engine/Engine;

    if-nez v0, :cond_8

    .line 301
    new-instance v0, Lcom/bumptech/glide/load/engine/Engine;

    iget-object v1, p0, Lcom/bumptech/glide/GlideBuilder;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    iget-object v2, p0, Lcom/bumptech/glide/GlideBuilder;->diskCacheFactory:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    iget-object v3, p0, Lcom/bumptech/glide/GlideBuilder;->diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    iget-object v4, p0, Lcom/bumptech/glide/GlideBuilder;->sourceExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 302
    invoke-static {}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->newUnlimitedSourceExecutor()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/Engine;-><init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;)V

    iput-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->engine:Lcom/bumptech/glide/load/engine/Engine;

    .line 305
    :cond_8
    new-instance v6, Lcom/bumptech/glide/manager/RequestManagerRetriever;

    iget-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->requestManagerFactory:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    invoke-direct {v6, v0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;-><init>(Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;)V

    .line 308
    .local v6, "requestManagerRetriever":Lcom/bumptech/glide/manager/RequestManagerRetriever;
    new-instance v0, Lcom/bumptech/glide/Glide;

    iget-object v2, p0, Lcom/bumptech/glide/GlideBuilder;->engine:Lcom/bumptech/glide/load/engine/Engine;

    iget-object v3, p0, Lcom/bumptech/glide/GlideBuilder;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    iget-object v4, p0, Lcom/bumptech/glide/GlideBuilder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object v5, p0, Lcom/bumptech/glide/GlideBuilder;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    iget-object v7, p0, Lcom/bumptech/glide/GlideBuilder;->connectivityMonitorFactory:Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

    iget v8, p0, Lcom/bumptech/glide/GlideBuilder;->logLevel:I

    iget-object v1, p0, Lcom/bumptech/glide/GlideBuilder;->defaultRequestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 317
    invoke-virtual {v1}, Lcom/bumptech/glide/request/RequestOptions;->lock()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v9

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/bumptech/glide/Glide;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/manager/RequestManagerRetriever;Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;ILcom/bumptech/glide/request/RequestOptions;)V

    .line 308
    return-object v0
.end method

.method public setArrayPool(Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/bumptech/glide/GlideBuilder;
    .locals 0
    .param p1, "arrayPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/bumptech/glide/GlideBuilder;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 63
    return-object p0
.end method

.method public setBitmapPool(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/GlideBuilder;
    .locals 0
    .param p1, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/bumptech/glide/GlideBuilder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 51
    return-object p0
.end method

.method public setConnectivityMonitorFactory(Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;)Lcom/bumptech/glide/GlideBuilder;
    .locals 0
    .param p1, "factory"    # Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/bumptech/glide/GlideBuilder;->connectivityMonitorFactory:Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

    .line 217
    return-object p0
.end method

.method public setDecodeFormat(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/GlideBuilder;
    .locals 2
    .param p1, "decodeFormat"    # Lcom/bumptech/glide/load/DecodeFormat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->defaultRequestOptions:Lcom/bumptech/glide/request/RequestOptions;

    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/request/RequestOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/RequestOptions;

    .line 176
    return-object p0
.end method

.method public setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/GlideBuilder;
    .locals 0
    .param p1, "requestOptions"    # Lcom/bumptech/glide/request/RequestOptions;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/bumptech/glide/GlideBuilder;->defaultRequestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 157
    return-object p0
.end method

.method public setDiskCache(Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;)Lcom/bumptech/glide/GlideBuilder;
    .locals 0
    .param p1, "diskCacheFactory"    # Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/bumptech/glide/GlideBuilder;->diskCacheFactory:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    .line 108
    return-object p0
.end method

.method public setDiskCache(Lcom/bumptech/glide/load/engine/cache/DiskCache;)Lcom/bumptech/glide/GlideBuilder;
    .locals 1
    .param p1, "diskCache"    # Lcom/bumptech/glide/load/engine/cache/DiskCache;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lcom/bumptech/glide/GlideBuilder$1;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/GlideBuilder$1;-><init>(Lcom/bumptech/glide/GlideBuilder;Lcom/bumptech/glide/load/engine/cache/DiskCache;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/GlideBuilder;->setDiskCache(Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;)Lcom/bumptech/glide/GlideBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setDiskCacheExecutor(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;)Lcom/bumptech/glide/GlideBuilder;
    .locals 0
    .param p1, "service"    # Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/bumptech/glide/GlideBuilder;->diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 142
    return-object p0
.end method

.method setEngine(Lcom/bumptech/glide/load/engine/Engine;)Lcom/bumptech/glide/GlideBuilder;
    .locals 0
    .param p1, "engine"    # Lcom/bumptech/glide/load/engine/Engine;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/bumptech/glide/GlideBuilder;->engine:Lcom/bumptech/glide/load/engine/Engine;

    .line 263
    return-object p0
.end method

.method public setLogLevel(I)Lcom/bumptech/glide/GlideBuilder;
    .locals 2
    .param p1, "logLevel"    # I

    .prologue
    .line 246
    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 v0, 0x6

    if-le p1, v0, :cond_1

    .line 247
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Log level must be one of Log.VERBOSE, Log.DEBUG, Log.INFO, Log.WARN, or Log.ERROR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_1
    iput p1, p0, Lcom/bumptech/glide/GlideBuilder;->logLevel:I

    .line 251
    return-object p0
.end method

.method public setMemoryCache(Lcom/bumptech/glide/load/engine/cache/MemoryCache;)Lcom/bumptech/glide/GlideBuilder;
    .locals 0
    .param p1, "memoryCache"    # Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/bumptech/glide/GlideBuilder;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 75
    return-object p0
.end method

.method public setMemorySizeCalculator(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;)Lcom/bumptech/glide/GlideBuilder;
    .locals 1
    .param p1, "builder"    # Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;

    .prologue
    .line 189
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->build()Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/GlideBuilder;->setMemorySizeCalculator(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;)Lcom/bumptech/glide/GlideBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setMemorySizeCalculator(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;)Lcom/bumptech/glide/GlideBuilder;
    .locals 0
    .param p1, "calculator"    # Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/bumptech/glide/GlideBuilder;->memorySizeCalculator:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    .line 204
    return-object p0
.end method

.method setRequestManagerFactory(Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;)Lcom/bumptech/glide/GlideBuilder;
    .locals 0
    .param p1, "factory"    # Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 256
    iput-object p1, p0, Lcom/bumptech/glide/GlideBuilder;->requestManagerFactory:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    .line 257
    return-object p0
.end method

.method public setResizeExecutor(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;)Lcom/bumptech/glide/GlideBuilder;
    .locals 0
    .param p1, "service"    # Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/bumptech/glide/GlideBuilder;->sourceExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 125
    return-object p0
.end method
