.class Lcom/bumptech/glide/load/engine/DecodeJob;
.super Ljava/lang/Object;
.source "DecodeJob.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;
.implements Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/DecodeJob$Stage;,
        Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;,
        Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;,
        Lcom/bumptech/glide/load/engine/DecodeJob$Callback;,
        Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;,
        Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;,
        Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/bumptech/glide/load/engine/DecodeJob",
        "<*>;>;",
        "Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DecodeJob"


# instance fields
.field private callback:Lcom/bumptech/glide/load/engine/DecodeJob$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/DecodeJob$Callback",
            "<TR;>;"
        }
    .end annotation
.end field

.field private currentAttemptingKey:Lcom/bumptech/glide/load/Key;

.field private currentData:Ljava/lang/Object;

.field private currentDataSource:Lcom/bumptech/glide/load/DataSource;

.field private currentFetcher:Lcom/bumptech/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<*>;"
        }
    .end annotation
.end field

.field private volatile currentGenerator:Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

.field currentSourceKey:Lcom/bumptech/glide/load/Key;

.field private currentThread:Ljava/lang/Thread;

.field final decodeHelper:Lcom/bumptech/glide/load/engine/DecodeHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/DecodeHelper",
            "<TR;>;"
        }
    .end annotation
.end field

.field final deferredEncodeManager:Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager",
            "<*>;"
        }
    .end annotation
.end field

.field private final diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

.field diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field private final exceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private glideContext:Lcom/bumptech/glide/GlideContext;

.field height:I

.field private volatile isCallbackNotified:Z

.field private volatile isCancelled:Z

.field private loadKey:Lcom/bumptech/glide/load/engine/EngineKey;

.field private onlyRetrieveFromCache:Z

.field options:Lcom/bumptech/glide/load/Options;

.field private order:I

.field private final pool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Lcom/bumptech/glide/load/engine/DecodeJob",
            "<*>;>;"
        }
    .end annotation
.end field

.field private priority:Lcom/bumptech/glide/Priority;

.field private final releaseManager:Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;

.field private runReason:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

.field signature:Lcom/bumptech/glide/load/Key;

.field private stage:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

.field private startFetchTime:J

.field private final stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

.field width:I


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Landroid/support/v4/util/Pools$Pool;)V
    .locals 1
    .param p1, "diskCacheProvider"    # Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;",
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Lcom/bumptech/glide/load/engine/DecodeJob",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    .local p2, "pool":Landroid/support/v4/util/Pools$Pool;, "Landroid/support/v4/util/Pools$Pool<Lcom/bumptech/glide/load/engine/DecodeJob<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeHelper;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/DecodeHelper;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeHelper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->exceptions:Ljava/util/List;

    .line 42
    invoke-static {}, Lcom/bumptech/glide/util/pool/StateVerifier;->newInstance()Lcom/bumptech/glide/util/pool/StateVerifier;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    .line 45
    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->deferredEncodeManager:Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;

    .line 46
    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->releaseManager:Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;

    .line 75
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    .line 76
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->pool:Landroid/support/v4/util/Pools$Pool;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/bumptech/glide/load/engine/DecodeJob;)Lcom/bumptech/glide/GlideContext;
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/load/engine/DecodeJob;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->glideContext:Lcom/bumptech/glide/GlideContext;

    return-object v0
.end method

.method private decodeFromData(Lcom/bumptech/glide/load/data/DataFetcher;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 5
    .param p3, "dataSource"    # Lcom/bumptech/glide/load/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<*>;TData;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/engine/GlideException;
        }
    .end annotation

    .prologue
    .line 420
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    .local p1, "fetcher":Lcom/bumptech/glide/load/data/DataFetcher;, "Lcom/bumptech/glide/load/data/DataFetcher<*>;"
    .local p2, "data":Ljava/lang/Object;, "TData;"
    if-nez p2, :cond_0

    .line 421
    const/4 v0, 0x0

    .line 430
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    .line 428
    :goto_0
    return-object v0

    .line 423
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v2

    .line 424
    .local v2, "startTime":J
    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeFromFetcher(Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    .line 425
    .local v0, "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TR;>;"
    const-string v1, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decoded result "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2, v3}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    :cond_1
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    goto :goto_0

    .end local v0    # "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TR;>;"
    .end local v2    # "startTime":J
    :catchall_0
    move-exception v1

    invoke-interface {p1}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    throw v1
.end method

.method private decodeFromFetcher(Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 3
    .param p2, "dataSource"    # Lcom/bumptech/glide/load/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/engine/GlideException;
        }
    .end annotation

    .prologue
    .line 437
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    .local p1, "data":Ljava/lang/Object;, "TData;"
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeHelper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getLoadPath(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/LoadPath;

    move-result-object v0

    .line 438
    .local v0, "path":Lcom/bumptech/glide/load/engine/LoadPath;, "Lcom/bumptech/glide/load/engine/LoadPath<TData;*TR;>;"
    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->runLoadPath(Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/engine/LoadPath;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v1

    return-object v1
.end method

.method private decodeFromRetrievedData()V
    .locals 7

    .prologue
    .line 370
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    const-string v2, "DecodeJob"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 371
    const-string v2, "Retrieved data"

    iget-wide v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->startFetchTime:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentData:Ljava/lang/Object;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", cache key: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentSourceKey:Lcom/bumptech/glide/load/Key;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", fetcher: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v4, v5, v3}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;JLjava/lang/String;)V

    .line 376
    :cond_0
    const/4 v1, 0x0

    .line 378
    .local v1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TR;>;"
    :try_start_0
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentData:Ljava/lang/Object;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentDataSource:Lcom/bumptech/glide/load/DataSource;

    invoke-direct {p0, v2, v3, v4}, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeFromData(Lcom/bumptech/glide/load/data/DataFetcher;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/load/engine/Resource;
    :try_end_0
    .catch Lcom/bumptech/glide/load/engine/GlideException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 383
    :goto_0
    if-eqz v1, :cond_1

    .line 384
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentDataSource:Lcom/bumptech/glide/load/DataSource;

    invoke-direct {p0, v1, v2}, Lcom/bumptech/glide/load/engine/DecodeJob;->notifyEncodeAndRelease(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;)V

    .line 388
    :goto_1
    return-void

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Lcom/bumptech/glide/load/engine/GlideException;
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentAttemptingKey:Lcom/bumptech/glide/load/Key;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentDataSource:Lcom/bumptech/glide/load/DataSource;

    invoke-virtual {v0, v2, v3}, Lcom/bumptech/glide/load/engine/GlideException;->setLoggingDetails(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/DataSource;)V

    .line 381
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->exceptions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 386
    .end local v0    # "e":Lcom/bumptech/glide/load/engine/GlideException;
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->runGenerators()V

    goto :goto_1
.end method

.method private getNextGenerator()Lcom/bumptech/glide/load/engine/DataFetcherGenerator;
    .locals 3

    .prologue
    .line 256
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$1;->$SwitchMap$com$bumptech$glide$load$engine$DecodeJob$Stage:[I

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stage:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 266
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized stage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stage:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :pswitch_0
    new-instance v0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeHelper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;-><init>(Lcom/bumptech/glide/load/engine/DecodeHelper;Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V

    .line 264
    :goto_0
    return-object v0

    .line 260
    :pswitch_1
    new-instance v0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeHelper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/engine/DataCacheGenerator;-><init>(Lcom/bumptech/glide/load/engine/DecodeHelper;Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V

    goto :goto_0

    .line 262
    :pswitch_2
    new-instance v0, Lcom/bumptech/glide/load/engine/SourceGenerator;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeHelper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/engine/SourceGenerator;-><init>(Lcom/bumptech/glide/load/engine/DecodeHelper;Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V

    goto :goto_0

    .line 264
    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 256
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getNextStage(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;
    .locals 3
    .param p1, "current"    # Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .prologue
    .line 314
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$1;->$SwitchMap$com$bumptech$glide$load$engine$DecodeJob$Stage:[I

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 328
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized stage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :pswitch_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->decodeCachedResource()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->RESOURCE_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 326
    :goto_0
    return-object v0

    .line 316
    :cond_0
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->RESOURCE_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 317
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->getNextStage(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    move-result-object v0

    goto :goto_0

    .line 319
    :pswitch_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->decodeCachedData()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->DATA_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->DATA_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 320
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->getNextStage(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    move-result-object v0

    goto :goto_0

    .line 323
    :pswitch_2
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->onlyRetrieveFromCache:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->FINISHED:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->SOURCE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    goto :goto_0

    .line 326
    :pswitch_3
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->FINISHED:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    goto :goto_0

    .line 314
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private getPriority()I
    .locals 1

    .prologue
    .line 199
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->priority:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0}, Lcom/bumptech/glide/Priority;->ordinal()I

    move-result v0

    return v0
.end method

.method private logWithTimeAndKey(Ljava/lang/String;J)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "startTime"    # J

    .prologue
    .line 453
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;JLjava/lang/String;)V

    .line 454
    return-void
.end method

.method private logWithTimeAndKey(Ljava/lang/String;JLjava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .param p4, "extraArgs"    # Ljava/lang/String;

    .prologue
    .line 457
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    const-string v1, "DecodeJob"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", load key: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->loadKey:Lcom/bumptech/glide/load/engine/EngineKey;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", thread: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 459
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    return-void

    .line 457
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private notifyComplete(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;)V
    .locals 1
    .param p2, "dataSource"    # Lcom/bumptech/glide/load/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TR;>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    .prologue
    .line 301
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    .local p1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TR;>;"
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->setNotifiedOrThrow()V

    .line 302
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->callback:Lcom/bumptech/glide/load/engine/DecodeJob$Callback;

    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/load/engine/DecodeJob$Callback;->onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;)V

    .line 303
    return-void
.end method

.method private notifyEncodeAndRelease(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;)V
    .locals 5
    .param p2, "dataSource"    # Lcom/bumptech/glide/load/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TR;>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    .prologue
    .line 391
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    .local p1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TR;>;"
    instance-of v2, p1, Lcom/bumptech/glide/load/engine/Initializable;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 392
    check-cast v2, Lcom/bumptech/glide/load/engine/Initializable;

    invoke-interface {v2}, Lcom/bumptech/glide/load/engine/Initializable;->initialize()V

    .line 395
    :cond_0
    move-object v1, p1

    .line 396
    .local v1, "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TR;>;"
    const/4 v0, 0x0

    .line 397
    .local v0, "lockedResource":Lcom/bumptech/glide/load/engine/LockedResource;, "Lcom/bumptech/glide/load/engine/LockedResource<TR;>;"
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->deferredEncodeManager:Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;->hasResourceToEncode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 398
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/LockedResource;->obtain(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/LockedResource;

    move-result-object v0

    .line 399
    move-object v1, v0

    .line 402
    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/bumptech/glide/load/engine/DecodeJob;->notifyComplete(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;)V

    .line 404
    sget-object v2, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->ENCODE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    iput-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stage:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 406
    :try_start_0
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->deferredEncodeManager:Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;->hasResourceToEncode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 407
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->deferredEncodeManager:Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->options:Lcom/bumptech/glide/load/Options;

    invoke-virtual {v2, v3, v4}, Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;->encode(Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Lcom/bumptech/glide/load/Options;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    :cond_2
    if-eqz v0, :cond_3

    .line 411
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/LockedResource;->unlock()V

    .line 413
    :cond_3
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->onEncodeComplete()V

    .line 415
    return-void

    .line 410
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_4

    .line 411
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/LockedResource;->unlock()V

    .line 413
    :cond_4
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->onEncodeComplete()V

    throw v2
.end method

.method private notifyFailed()V
    .locals 4

    .prologue
    .line 294
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->setNotifiedOrThrow()V

    .line 295
    new-instance v0, Lcom/bumptech/glide/load/engine/GlideException;

    const-string v1, "Failed to load resource"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->exceptions:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 296
    .local v0, "e":Lcom/bumptech/glide/load/engine/GlideException;
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->callback:Lcom/bumptech/glide/load/engine/DecodeJob$Callback;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/DecodeJob$Callback;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;)V

    .line 297
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->onLoadFailed()V

    .line 298
    return-void
.end method

.method private onEncodeComplete()V
    .locals 1

    .prologue
    .line 151
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->releaseManager:Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;->onEncodeComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->releaseInternal()V

    .line 154
    :cond_0
    return-void
.end method

.method private onLoadFailed()V
    .locals 1

    .prologue
    .line 160
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->releaseManager:Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;->onFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->releaseInternal()V

    .line 163
    :cond_0
    return-void
.end method

.method private releaseInternal()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->releaseManager:Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;->reset()V

    .line 167
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->deferredEncodeManager:Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;->clear()V

    .line 168
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeHelper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeHelper;->clear()V

    .line 169
    iput-boolean v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->isCallbackNotified:Z

    .line 170
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->glideContext:Lcom/bumptech/glide/GlideContext;

    .line 171
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->signature:Lcom/bumptech/glide/load/Key;

    .line 172
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->options:Lcom/bumptech/glide/load/Options;

    .line 173
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->priority:Lcom/bumptech/glide/Priority;

    .line 174
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->loadKey:Lcom/bumptech/glide/load/engine/EngineKey;

    .line 175
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->callback:Lcom/bumptech/glide/load/engine/DecodeJob$Callback;

    .line 176
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stage:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 177
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentGenerator:Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    .line 178
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentThread:Ljava/lang/Thread;

    .line 179
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentSourceKey:Lcom/bumptech/glide/load/Key;

    .line 180
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentData:Ljava/lang/Object;

    .line 181
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentDataSource:Lcom/bumptech/glide/load/DataSource;

    .line 182
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 183
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->startFetchTime:J

    .line 184
    iput-boolean v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->isCancelled:Z

    .line 185
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->exceptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 186
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->pool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 187
    return-void
.end method

.method private runGenerators()V
    .locals 4

    .prologue
    .line 271
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentThread:Ljava/lang/Thread;

    .line 272
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->startFetchTime:J

    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, "isStarted":Z
    :cond_0
    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->isCancelled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentGenerator:Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentGenerator:Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    .line 275
    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator;->startNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 276
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stage:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->getNextStage(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stage:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 277
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->getNextGenerator()Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentGenerator:Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    .line 279
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stage:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    sget-object v2, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->SOURCE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    if-ne v1, v2, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->reschedule()V

    .line 291
    :cond_1
    :goto_0
    return-void

    .line 285
    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stage:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    sget-object v2, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->FINISHED:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    if-eq v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->isCancelled:Z

    if-eqz v1, :cond_1

    :cond_3
    if-nez v0, :cond_1

    .line 286
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->notifyFailed()V

    goto :goto_0
.end method

.method private runLoadPath(Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/engine/LoadPath;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 6
    .param p2, "dataSource"    # Lcom/bumptech/glide/load/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "ResourceType:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Lcom/bumptech/glide/load/engine/LoadPath",
            "<TData;TResourceType;TR;>;)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/engine/GlideException;
        }
    .end annotation

    .prologue
    .line 443
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    .local p1, "data":Ljava/lang/Object;, "TData;"
    .local p3, "path":Lcom/bumptech/glide/load/engine/LoadPath;, "Lcom/bumptech/glide/load/engine/LoadPath<TData;TResourceType;TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->glideContext:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v0}, Lcom/bumptech/glide/GlideContext;->getRegistry()Lcom/bumptech/glide/Registry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Registry;->getRewinder(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/DataRewinder;

    move-result-object v1

    .line 445
    .local v1, "rewinder":Lcom/bumptech/glide/load/data/DataRewinder;, "Lcom/bumptech/glide/load/data/DataRewinder<TData;>;"
    :try_start_0
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->options:Lcom/bumptech/glide/load/Options;

    iget v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->width:I

    iget v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->height:I

    new-instance v5, Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;

    invoke-direct {v5, p0, p2}, Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;-><init>(Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/load/DataSource;)V

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/LoadPath;->load(Lcom/bumptech/glide/load/data/DataRewinder;Lcom/bumptech/glide/load/Options;IILcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;)Lcom/bumptech/glide/load/engine/Resource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 448
    invoke-interface {v1}, Lcom/bumptech/glide/load/data/DataRewinder;->cleanup()V

    .line 445
    return-object v0

    .line 448
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/bumptech/glide/load/data/DataRewinder;->cleanup()V

    throw v0
.end method

.method private runWrapped()V
    .locals 3

    .prologue
    .line 238
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$1;->$SwitchMap$com$bumptech$glide$load$engine$DecodeJob$RunReason:[I

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->runReason:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 251
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized run reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->runReason:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :pswitch_0
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->INITIALIZE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->getNextStage(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stage:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 241
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->getNextGenerator()Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentGenerator:Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    .line 242
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->runGenerators()V

    .line 253
    :goto_0
    return-void

    .line 245
    :pswitch_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->runGenerators()V

    goto :goto_0

    .line 248
    :pswitch_2
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeFromRetrievedData()V

    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setNotifiedOrThrow()V
    .locals 2

    .prologue
    .line 306
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 307
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->isCallbackNotified:Z

    if-eqz v0, :cond_0

    .line 308
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already notified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->isCallbackNotified:Z

    .line 311
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 203
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->isCancelled:Z

    .line 204
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentGenerator:Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    .line 205
    .local v0, "local":Lcom/bumptech/glide/load/engine/DataFetcherGenerator;
    if-eqz v0, :cond_0

    .line 206
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator;->cancel()V

    .line 208
    :cond_0
    return-void
.end method

.method public compareTo(Lcom/bumptech/glide/load/engine/DecodeJob;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DecodeJob",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    .local p1, "other":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<*>;"
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->getPriority()I

    move-result v1

    invoke-direct {p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->getPriority()I

    move-result v2

    sub-int v0, v1, v2

    .line 192
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 193
    iget v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->order:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/DecodeJob;->order:I

    sub-int v0, v1, v2

    .line 195
    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 34
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    check-cast p1, Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->compareTo(Lcom/bumptech/glide/load/engine/DecodeJob;)I

    move-result v0

    return v0
.end method

.method public getVerifier()Lcom/bumptech/glide/util/pool/StateVerifier;
    .locals 1

    .prologue
    .line 464
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    return-object v0
.end method

.method init(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Lcom/bumptech/glide/load/engine/EngineKey;Lcom/bumptech/glide/load/Key;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Ljava/util/Map;ZZLcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/engine/DecodeJob$Callback;I)Lcom/bumptech/glide/load/engine/DecodeJob;
    .locals 15
    .param p1, "glideContext"    # Lcom/bumptech/glide/GlideContext;
    .param p2, "model"    # Ljava/lang/Object;
    .param p3, "loadKey"    # Lcom/bumptech/glide/load/engine/EngineKey;
    .param p4, "signature"    # Lcom/bumptech/glide/load/Key;
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p9, "priority"    # Lcom/bumptech/glide/Priority;
    .param p10, "diskCacheStrategy"    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .param p12, "isTransformationRequired"    # Z
    .param p13, "onlyRetrieveFromCache"    # Z
    .param p14, "options"    # Lcom/bumptech/glide/load/Options;
    .param p16, "order"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/GlideContext;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/engine/EngineKey;",
            "Lcom/bumptech/glide/load/Key;",
            "II",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/bumptech/glide/load/Transformation",
            "<*>;>;ZZ",
            "Lcom/bumptech/glide/load/Options;",
            "Lcom/bumptech/glide/load/engine/DecodeJob$Callback",
            "<TR;>;I)",
            "Lcom/bumptech/glide/load/engine/DecodeJob",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    .local p7, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p8, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    .local p11, "transformations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/bumptech/glide/load/Transformation<*>;>;"
    .local p15, "callback":Lcom/bumptech/glide/load/engine/DecodeJob$Callback;, "Lcom/bumptech/glide/load/engine/DecodeJob$Callback<TR;>;"
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeHelper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    iget-object v14, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p10

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p14

    move-object/from16 v12, p11

    move/from16 v13, p12

    invoke-virtual/range {v1 .. v14}, Lcom/bumptech/glide/load/engine/DecodeHelper;->init(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/Options;Ljava/util/Map;ZLcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;)Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 110
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->glideContext:Lcom/bumptech/glide/GlideContext;

    .line 111
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->signature:Lcom/bumptech/glide/load/Key;

    .line 112
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->priority:Lcom/bumptech/glide/Priority;

    .line 113
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->loadKey:Lcom/bumptech/glide/load/engine/EngineKey;

    .line 114
    move/from16 v0, p5

    iput v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->width:I

    .line 115
    move/from16 v0, p6

    iput v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->height:I

    .line 116
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 117
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->onlyRetrieveFromCache:Z

    .line 118
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->options:Lcom/bumptech/glide/load/Options;

    .line 119
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->callback:Lcom/bumptech/glide/load/engine/DecodeJob$Callback;

    .line 120
    move/from16 v0, p16

    iput v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->order:I

    .line 121
    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->INITIALIZE:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->runReason:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 122
    return-object p0
.end method

.method public onDataFetcherFailed(Lcom/bumptech/glide/load/Key;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;)V
    .locals 3
    .param p1, "attemptedKey"    # Lcom/bumptech/glide/load/Key;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p4, "dataSource"    # Lcom/bumptech/glide/load/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Ljava/lang/Exception;",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    .local p3, "fetcher":Lcom/bumptech/glide/load/data/DataFetcher;, "Lcom/bumptech/glide/load/data/DataFetcher<*>;"
    invoke-interface {p3}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    .line 358
    new-instance v0, Lcom/bumptech/glide/load/engine/GlideException;

    const-string v1, "Fetching data failed"

    invoke-direct {v0, v1, p2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 359
    .local v0, "exception":Lcom/bumptech/glide/load/engine/GlideException;
    invoke-interface {p3}, Lcom/bumptech/glide/load/data/DataFetcher;->getDataClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, p4, v1}, Lcom/bumptech/glide/load/engine/GlideException;->setLoggingDetails(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/DataSource;Ljava/lang/Class;)V

    .line 360
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->exceptions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentThread:Ljava/lang/Thread;

    if-eq v1, v2, :cond_0

    .line 362
    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->runReason:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 363
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->callback:Lcom/bumptech/glide/load/engine/DecodeJob$Callback;

    invoke-interface {v1, p0}, Lcom/bumptech/glide/load/engine/DecodeJob$Callback;->reschedule(Lcom/bumptech/glide/load/engine/DecodeJob;)V

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->runGenerators()V

    goto :goto_0
.end method

.method public onDataFetcherReady(Lcom/bumptech/glide/load/Key;Ljava/lang/Object;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/Key;)V
    .locals 2
    .param p1, "sourceKey"    # Lcom/bumptech/glide/load/Key;
    .param p2, "data"    # Ljava/lang/Object;
    .param p4, "dataSource"    # Lcom/bumptech/glide/load/DataSource;
    .param p5, "attemptedKey"    # Lcom/bumptech/glide/load/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Lcom/bumptech/glide/load/Key;",
            ")V"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    .local p3, "fetcher":Lcom/bumptech/glide/load/data/DataFetcher;, "Lcom/bumptech/glide/load/data/DataFetcher<*>;"
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentSourceKey:Lcom/bumptech/glide/load/Key;

    .line 342
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentData:Ljava/lang/Object;

    .line 343
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 344
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentDataSource:Lcom/bumptech/glide/load/DataSource;

    .line 345
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentAttemptingKey:Lcom/bumptech/glide/load/Key;

    .line 346
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 347
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->DECODE_DATA:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->runReason:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 348
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->callback:Lcom/bumptech/glide/load/engine/DecodeJob$Callback;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/load/engine/DecodeJob$Callback;->reschedule(Lcom/bumptech/glide/load/engine/DecodeJob;)V

    .line 352
    :goto_0
    return-void

    .line 350
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeFromRetrievedData()V

    goto :goto_0
.end method

.method release(Z)V
    .locals 1
    .param p1, "isRemovedFromQueue"    # Z

    .prologue
    .line 141
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->releaseManager:Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;->release(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->releaseInternal()V

    .line 144
    :cond_0
    return-void
.end method

.method public reschedule()V
    .locals 1

    .prologue
    .line 334
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->runReason:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 335
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->callback:Lcom/bumptech/glide/load/engine/DecodeJob$Callback;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/load/engine/DecodeJob$Callback;->reschedule(Lcom/bumptech/glide/load/engine/DecodeJob;)V

    .line 336
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 216
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    :try_start_0
    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->isCancelled:Z

    if-eqz v1, :cond_1

    .line 217
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->notifyFailed()V

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->runWrapped()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "DecodeJob"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    const-string v1, "DecodeJob"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DecodeJob threw unexpectedly, isCancelled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->isCancelled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", stage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stage:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stage:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    sget-object v2, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->ENCODE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    if-eq v1, v2, :cond_3

    .line 229
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->notifyFailed()V

    .line 231
    :cond_3
    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->isCancelled:Z

    if-nez v1, :cond_0

    .line 232
    throw v0
.end method

.method willDecodeFromCache()Z
    .locals 2

    .prologue
    .line 130
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->INITIALIZE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->getNextStage(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    move-result-object v0

    .line 131
    .local v0, "firstStage":Lcom/bumptech/glide/load/engine/DecodeJob$Stage;
    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->RESOURCE_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->DATA_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
