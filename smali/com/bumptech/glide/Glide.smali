.class public Lcom/bumptech/glide/Glide;
.super Ljava/lang/Object;
.source "Glide.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final DEFAULT_DISK_CACHE_DIR:Ljava/lang/String; = "image_manager_disk_cache"

.field private static final TAG:Ljava/lang/String; = "Glide"

.field private static volatile glide:Lcom/bumptech/glide/Glide;


# instance fields
.field private final arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final bitmapPreFiller:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;

.field private final connectivityMonitorFactory:Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

.field private final engine:Lcom/bumptech/glide/load/engine/Engine;

.field private final glideContext:Lcom/bumptech/glide/GlideContext;

.field private final managers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/RequestManager;",
            ">;"
        }
    .end annotation
.end field

.field private final memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

.field private memoryCategory:Lcom/bumptech/glide/MemoryCategory;

.field private final registry:Lcom/bumptech/glide/Registry;

.field private final requestManagerRetriever:Lcom/bumptech/glide/manager/RequestManagerRetriever;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/manager/RequestManagerRetriever;Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;ILcom/bumptech/glide/request/RequestOptions;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "engine"    # Lcom/bumptech/glide/load/engine/Engine;
    .param p3, "memoryCache"    # Lcom/bumptech/glide/load/engine/cache/MemoryCache;
    .param p4, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p5, "arrayPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
    .param p6, "requestManagerRetriever"    # Lcom/bumptech/glide/manager/RequestManagerRetriever;
    .param p7, "connectivityMonitorFactory"    # Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;
    .param p8, "logLevel"    # I
    .param p9, "defaultRequestOptions"    # Lcom/bumptech/glide/request/RequestOptions;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/List;

    .line 106
    sget-object v2, Lcom/bumptech/glide/MemoryCategory;->NORMAL:Lcom/bumptech/glide/MemoryCategory;

    iput-object v2, p0, Lcom/bumptech/glide/Glide;->memoryCategory:Lcom/bumptech/glide/MemoryCategory;

    .line 263
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/bumptech/glide/Glide;->engine:Lcom/bumptech/glide/load/engine/Engine;

    .line 264
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/bumptech/glide/Glide;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 265
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/bumptech/glide/Glide;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 266
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/bumptech/glide/Glide;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 267
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/bumptech/glide/Glide;->requestManagerRetriever:Lcom/bumptech/glide/manager/RequestManagerRetriever;

    .line 268
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/bumptech/glide/Glide;->connectivityMonitorFactory:Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

    .line 270
    invoke-virtual/range {p9 .. p9}, Lcom/bumptech/glide/request/RequestOptions;->getOptions()Lcom/bumptech/glide/load/Options;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->DECODE_FORMAT:Lcom/bumptech/glide/load/Option;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/bumptech/glide/load/DecodeFormat;

    .line 271
    .local v11, "decodeFormat":Lcom/bumptech/glide/load/DecodeFormat;
    new-instance v2, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v2, v0, v1, v11}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;-><init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v2, p0, Lcom/bumptech/glide/Glide;->bitmapPreFiller:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;

    .line 273
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 275
    .local v13, "resources":Landroid/content/res/Resources;
    new-instance v2, Lcom/bumptech/glide/Registry;

    invoke-direct {v2}, Lcom/bumptech/glide/Registry;-><init>()V

    iput-object v2, p0, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    .line 276
    iget-object v2, p0, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;

    invoke-direct {v3}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;-><init>()V

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/Registry;->register(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/Registry;

    .line 278
    new-instance v12, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    iget-object v2, p0, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    invoke-virtual {v2}, Lcom/bumptech/glide/Registry;->getImageHeaderParsers()Ljava/util/List;

    move-result-object v2

    .line 279
    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {v12, v2, v3, v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 280
    .local v12, "downsampler":Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
    new-instance v10, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;

    iget-object v2, p0, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    .line 281
    invoke-virtual {v2}, Lcom/bumptech/glide/Registry;->getImageHeaderParsers()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {v10, p1, v2, v0, v1}, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 283
    .local v10, "byteBufferGifDecoder":Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;
    iget-object v2, p0, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    const-class v3, Ljava/nio/ByteBuffer;

    new-instance v4, Lcom/bumptech/glide/load/model/ByteBufferEncoder;

    invoke-direct {v4}, Lcom/bumptech/glide/load/model/ByteBufferEncoder;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/bumptech/glide/Registry;->register(Ljava/lang/Class;Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Ljava/io/InputStream;

    new-instance v4, Lcom/bumptech/glide/load/model/StreamEncoder;

    move-object/from16 v0, p5

    invoke-direct {v4, v0}, Lcom/bumptech/glide/load/model/StreamEncoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 284
    invoke-virtual {v2, v3, v4}, Lcom/bumptech/glide/Registry;->register(Ljava/lang/Class;Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Ljava/nio/ByteBuffer;

    const-class v4, Landroid/graphics/Bitmap;

    new-instance v6, Lcom/bumptech/glide/load/resource/bitmap/ByteBufferBitmapDecoder;

    invoke-direct {v6, v12}, Lcom/bumptech/glide/load/resource/bitmap/ByteBufferBitmapDecoder;-><init>(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;)V

    .line 286
    invoke-virtual {v2, v3, v4, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Ljava/io/InputStream;

    const-class v4, Landroid/graphics/Bitmap;

    new-instance v6, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    move-object/from16 v0, p5

    invoke-direct {v6, v12, v0}, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 288
    invoke-virtual {v2, v3, v4, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Landroid/os/ParcelFileDescriptor;

    const-class v4, Landroid/graphics/Bitmap;

    new-instance v6, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;

    move-object/from16 v0, p4

    invoke-direct {v6, v0}, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 290
    invoke-virtual {v2, v3, v4, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Landroid/graphics/Bitmap;

    new-instance v4, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    invoke-direct {v4}, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;-><init>()V

    .line 291
    invoke-virtual {v2, v3, v4}, Lcom/bumptech/glide/Registry;->register(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Ljava/nio/ByteBuffer;

    const-class v4, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v6, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;

    new-instance v7, Lcom/bumptech/glide/load/resource/bitmap/ByteBufferBitmapDecoder;

    invoke-direct {v7, v12}, Lcom/bumptech/glide/load/resource/bitmap/ByteBufferBitmapDecoder;-><init>(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;)V

    move-object/from16 v0, p4

    invoke-direct {v6, v13, v0, v7}, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 293
    invoke-virtual {v2, v3, v4, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Ljava/io/InputStream;

    const-class v4, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v6, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;

    new-instance v7, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    move-object/from16 v0, p5

    invoke-direct {v7, v12, v0}, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    move-object/from16 v0, p4

    invoke-direct {v6, v13, v0, v7}, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 296
    invoke-virtual {v2, v3, v4, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Landroid/os/ParcelFileDescriptor;

    const-class v4, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v6, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;

    new-instance v7, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;

    move-object/from16 v0, p4

    invoke-direct {v7, v0}, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    move-object/from16 v0, p4

    invoke-direct {v6, v13, v0, v7}, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 299
    invoke-virtual {v2, v3, v4, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableEncoder;

    new-instance v6, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    invoke-direct {v6}, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;-><init>()V

    move-object/from16 v0, p4

    invoke-direct {v4, v0, v6}, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableEncoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/ResourceEncoder;)V

    .line 301
    invoke-virtual {v2, v3, v4}, Lcom/bumptech/glide/Registry;->register(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Ljava/io/InputStream;

    const-class v4, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    new-instance v6, Lcom/bumptech/glide/load/resource/gif/StreamGifDecoder;

    iget-object v7, p0, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    .line 304
    invoke-virtual {v7}, Lcom/bumptech/glide/Registry;->getImageHeaderParsers()Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-direct {v6, v7, v10, v0}, Lcom/bumptech/glide/load/resource/gif/StreamGifDecoder;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 303
    invoke-virtual {v2, v3, v4, v6}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Ljava/nio/ByteBuffer;

    const-class v4, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 305
    invoke-virtual {v2, v3, v4, v10}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    new-instance v4, Lcom/bumptech/glide/load/resource/gif/GifDrawableEncoder;

    invoke-direct {v4}, Lcom/bumptech/glide/load/resource/gif/GifDrawableEncoder;-><init>()V

    .line 306
    invoke-virtual {v2, v3, v4}, Lcom/bumptech/glide/Registry;->register(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    const-class v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    new-instance v6, Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;-><init>()V

    .line 308
    invoke-virtual {v2, v3, v4, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    const-class v4, Landroid/graphics/Bitmap;

    new-instance v6, Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;

    move-object/from16 v0, p4

    invoke-direct {v6, v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 309
    invoke-virtual {v2, v3, v4, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    new-instance v3, Lcom/bumptech/glide/load/resource/bytes/ByteBufferRewinder$Factory;

    invoke-direct {v3}, Lcom/bumptech/glide/load/resource/bytes/ByteBufferRewinder$Factory;-><init>()V

    .line 311
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/Registry;->register(Lcom/bumptech/glide/load/data/DataRewinder$Factory;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Ljava/io/File;

    const-class v4, Ljava/nio/ByteBuffer;

    new-instance v6, Lcom/bumptech/glide/load/model/ByteBufferFileLoader$Factory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/ByteBufferFileLoader$Factory;-><init>()V

    .line 312
    invoke-virtual {v2, v3, v4, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Ljava/io/File;

    const-class v4, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/FileLoader$StreamFactory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/FileLoader$StreamFactory;-><init>()V

    .line 313
    invoke-virtual {v2, v3, v4, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Ljava/io/File;

    const-class v4, Ljava/io/File;

    new-instance v6, Lcom/bumptech/glide/load/resource/file/FileDecoder;

    invoke-direct {v6}, Lcom/bumptech/glide/load/resource/file/FileDecoder;-><init>()V

    .line 314
    invoke-virtual {v2, v3, v4, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Ljava/io/File;

    const-class v4, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lcom/bumptech/glide/load/model/FileLoader$FileDescriptorFactory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/FileLoader$FileDescriptorFactory;-><init>()V

    .line 315
    invoke-virtual {v2, v3, v4, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Ljava/io/File;

    const-class v4, Ljava/io/File;

    new-instance v6, Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;-><init>()V

    .line 316
    invoke-virtual {v2, v3, v4, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    new-instance v3, Lcom/bumptech/glide/load/data/InputStreamRewinder$Factory;

    move-object/from16 v0, p5

    invoke-direct {v3, v0}, Lcom/bumptech/glide/load/data/InputStreamRewinder$Factory;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 318
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/Registry;->register(Lcom/bumptech/glide/load/data/DataRewinder$Factory;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/ResourceLoader$StreamFactory;

    invoke-direct {v6, v13}, Lcom/bumptech/glide/load/model/ResourceLoader$StreamFactory;-><init>(Landroid/content/res/Resources;)V

    .line 319
    invoke-virtual {v2, v3, v4, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v4, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lcom/bumptech/glide/load/model/ResourceLoader$FileDescriptorFactory;

    invoke-direct {v6, v13}, Lcom/bumptech/glide/load/model/ResourceLoader$FileDescriptorFactory;-><init>(Landroid/content/res/Resources;)V

    .line 320
    invoke-virtual {v2, v3, v4, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Ljava/lang/Integer;

    const-class v4, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/ResourceLoader$StreamFactory;

    invoke-direct {v6, v13}, Lcom/bumptech/glide/load/model/ResourceLoader$StreamFactory;-><init>(Landroid/content/res/Resources;)V

    .line 324
    invoke-virtual {v2, v3, v4, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Ljava/lang/Integer;

    const-class v4, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lcom/bumptech/glide/load/model/ResourceLoader$FileDescriptorFactory;

    invoke-direct {v6, v13}, Lcom/bumptech/glide/load/model/ResourceLoader$FileDescriptorFactory;-><init>(Landroid/content/res/Resources;)V

    .line 325
    invoke-virtual {v2, v3, v4, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    const-class v4, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory;-><init>()V

    .line 329
    invoke-virtual {v2, v3, v4, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    const-class v4, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/StringLoader$StreamFactory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/StringLoader$StreamFactory;-><init>()V

    .line 330
    invoke-virtual {v2, v3, v4, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    const-class v4, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lcom/bumptech/glide/load/model/StringLoader$FileDescriptorFactory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/StringLoader$FileDescriptorFactory;-><init>()V

    .line 331
    invoke-virtual {v2, v3, v4, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/stream/HttpUriLoader$Factory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/stream/HttpUriLoader$Factory;-><init>()V

    .line 332
    invoke-virtual {v2, v3, v4, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/AssetUriLoader$StreamFactory;

    .line 333
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/bumptech/glide/load/model/AssetUriLoader$StreamFactory;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v2, v3, v4, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    const-class v4, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lcom/bumptech/glide/load/model/AssetUriLoader$FileDescriptorFactory;

    .line 337
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/bumptech/glide/load/model/AssetUriLoader$FileDescriptorFactory;-><init>(Landroid/content/res/AssetManager;)V

    .line 334
    invoke-virtual {v2, v3, v4, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/stream/MediaStoreImageThumbLoader$Factory;

    invoke-direct {v6, p1}, Lcom/bumptech/glide/load/model/stream/MediaStoreImageThumbLoader$Factory;-><init>(Landroid/content/Context;)V

    .line 338
    invoke-virtual {v2, v3, v4, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/stream/MediaStoreVideoThumbLoader$Factory;

    invoke-direct {v6, p1}, Lcom/bumptech/glide/load/model/stream/MediaStoreVideoThumbLoader$Factory;-><init>(Landroid/content/Context;)V

    .line 339
    invoke-virtual {v2, v3, v4, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;

    .line 343
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;-><init>(Landroid/content/ContentResolver;)V

    .line 340
    invoke-virtual {v2, v3, v4, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    const-class v4, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lcom/bumptech/glide/load/model/UriLoader$FileDescriptorFactory;

    .line 345
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/bumptech/glide/load/model/UriLoader$FileDescriptorFactory;-><init>(Landroid/content/ContentResolver;)V

    .line 344
    invoke-virtual {v2, v3, v4, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/UrlUriLoader$StreamFactory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/UrlUriLoader$StreamFactory;-><init>()V

    .line 346
    invoke-virtual {v2, v3, v4, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Ljava/net/URL;

    const-class v4, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/stream/UrlLoader$StreamFactory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/stream/UrlLoader$StreamFactory;-><init>()V

    .line 347
    invoke-virtual {v2, v3, v4, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    const-class v4, Ljava/io/File;

    new-instance v6, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$Factory;

    invoke-direct {v6, p1}, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$Factory;-><init>(Landroid/content/Context;)V

    .line 348
    invoke-virtual {v2, v3, v4, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Lcom/bumptech/glide/load/model/GlideUrl;

    const-class v4, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/stream/HttpGlideUrlLoader$Factory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/stream/HttpGlideUrlLoader$Factory;-><init>()V

    .line 349
    invoke-virtual {v2, v3, v4, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, [B

    const-class v4, Ljava/nio/ByteBuffer;

    new-instance v6, Lcom/bumptech/glide/load/model/ByteArrayLoader$ByteBufferFactory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/ByteArrayLoader$ByteBufferFactory;-><init>()V

    .line 350
    invoke-virtual {v2, v3, v4, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, [B

    const-class v4, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/ByteArrayLoader$StreamFactory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/ByteArrayLoader$StreamFactory;-><init>()V

    .line 351
    invoke-virtual {v2, v3, v4, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Landroid/graphics/Bitmap;

    const-class v4, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v6, Lcom/bumptech/glide/load/resource/transcode/BitmapDrawableTranscoder;

    move-object/from16 v0, p4

    invoke-direct {v6, v13, v0}, Lcom/bumptech/glide/load/resource/transcode/BitmapDrawableTranscoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 353
    invoke-virtual {v2, v3, v4, v6}, Lcom/bumptech/glide/Registry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Landroid/graphics/Bitmap;

    const-class v4, [B

    new-instance v6, Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;

    invoke-direct {v6}, Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;-><init>()V

    .line 355
    invoke-virtual {v2, v3, v4, v6}, Lcom/bumptech/glide/Registry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    const-class v4, [B

    new-instance v6, Lcom/bumptech/glide/load/resource/transcode/GifDrawableBytesTranscoder;

    invoke-direct {v6}, Lcom/bumptech/glide/load/resource/transcode/GifDrawableBytesTranscoder;-><init>()V

    .line 356
    invoke-virtual {v2, v3, v4, v6}, Lcom/bumptech/glide/Registry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/Registry;

    .line 358
    new-instance v5, Lcom/bumptech/glide/request/target/ImageViewTargetFactory;

    invoke-direct {v5}, Lcom/bumptech/glide/request/target/ImageViewTargetFactory;-><init>()V

    .line 359
    .local v5, "imageViewTargetFactory":Lcom/bumptech/glide/request/target/ImageViewTargetFactory;
    new-instance v2, Lcom/bumptech/glide/GlideContext;

    iget-object v4, p0, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    move-object v3, p1

    move-object/from16 v6, p9

    move-object/from16 v7, p2

    move-object v8, p0

    move/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Lcom/bumptech/glide/GlideContext;-><init>(Landroid/content/Context;Lcom/bumptech/glide/Registry;Lcom/bumptech/glide/request/target/ImageViewTargetFactory;Lcom/bumptech/glide/request/RequestOptions;Lcom/bumptech/glide/load/engine/Engine;Landroid/content/ComponentCallbacks2;I)V

    iput-object v2, p0, Lcom/bumptech/glide/Glide;->glideContext:Lcom/bumptech/glide/GlideContext;

    .line 361
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    sget-object v0, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    if-nez v0, :cond_1

    .line 152
    const-class v1, Lcom/bumptech/glide/Glide;

    monitor-enter v1

    .line 153
    :try_start_0
    sget-object v0, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    if-nez v0, :cond_0

    .line 154
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->initGlide(Landroid/content/Context;)V

    .line 156
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :cond_1
    sget-object v0, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    return-object v0

    .line 156
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getAnnotationGeneratedGlideModules()Lcom/bumptech/glide/GeneratedAppGlideModule;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 227
    const/4 v3, 0x0

    .line 229
    .local v3, "result":Lcom/bumptech/glide/GeneratedAppGlideModule;
    :try_start_0
    const-string v4, "com.bumptech.glide.GeneratedAppGlideModuleImpl"

    .line 231
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 232
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/bumptech/glide/GeneratedAppGlideModule;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/bumptech/glide/GeneratedAppGlideModule;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 249
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/bumptech/glide/GeneratedAppGlideModule;>;"
    :cond_0
    :goto_0
    return-object v3

    .line 233
    :catch_0
    move-exception v2

    .line 234
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "Glide"

    const/4 v5, 0x5

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 235
    const-string v4, "Glide"

    const-string v5, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 241
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v4, v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 244
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v2

    .line 245
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v4, v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static getPhotoCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 117
    const-string v0, "image_manager_disk_cache"

    invoke-static {p0, v0}, Lcom/bumptech/glide/Glide;->getPhotoCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getPhotoCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cacheName"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 131
    .local v0, "cacheDir":Ljava/io/File;
    if-eqz v0, :cond_2

    .line 132
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 133
    .local v1, "result":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 142
    .end local v1    # "result":Ljava/io/File;
    :cond_1
    :goto_0
    return-object v1

    .line 139
    :cond_2
    const-string v3, "Glide"

    const/4 v4, 0x6

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 140
    const-string v3, "Glide"

    const-string v4, "default disk cache dir is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v1, v2

    .line 142
    goto :goto_0
.end method

.method private static getRetriever(Landroid/content/Context;)Lcom/bumptech/glide/manager/RequestManagerRetriever;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 509
    const-string v0, "You cannot start a load on a not yet attached View or a  Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    invoke-static {v0}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->getRequestManagerRetriever()Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    return-object v0
.end method

.method public static init(Lcom/bumptech/glide/Glide;)V
    .locals 0
    .param p0, "glide"    # Lcom/bumptech/glide/Glide;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 164
    sput-object p0, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    .line 165
    return-void
.end method

.method private static initGlide(Landroid/content/Context;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v13, 0x3

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 176
    .local v1, "applicationContext":Landroid/content/Context;
    invoke-static {}, Lcom/bumptech/glide/Glide;->getAnnotationGeneratedGlideModules()Lcom/bumptech/glide/GeneratedAppGlideModule;

    move-result-object v0

    .line 177
    .local v0, "annotationGeneratedModule":Lcom/bumptech/glide/GeneratedAppGlideModule;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 178
    .local v8, "manifestModules":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/module/GlideModule;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bumptech/glide/GeneratedAppGlideModule;->isManifestParsingEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 179
    :cond_0
    new-instance v10, Lcom/bumptech/glide/module/ManifestParser;

    invoke-direct {v10, v1}, Lcom/bumptech/glide/module/ManifestParser;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10}, Lcom/bumptech/glide/module/ManifestParser;->parse()Ljava/util/List;

    move-result-object v8

    .line 182
    :cond_1
    if-eqz v0, :cond_4

    .line 183
    invoke-virtual {v0}, Lcom/bumptech/glide/GeneratedAppGlideModule;->getExcludedModuleClasses()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 185
    invoke-virtual {v0}, Lcom/bumptech/glide/GeneratedAppGlideModule;->getExcludedModuleClasses()Ljava/util/Set;

    move-result-object v4

    .line 186
    .local v4, "excludedModuleClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/bumptech/glide/module/GlideModule;>;"
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 187
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/module/GlideModule;

    .line 188
    .local v3, "current":Lcom/bumptech/glide/module/GlideModule;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 191
    const-string v10, "Glide"

    invoke-static {v10, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 192
    const-string v10, "Glide"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AppGlideModule excludes manifest GlideModule: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 198
    .end local v3    # "current":Lcom/bumptech/glide/module/GlideModule;
    .end local v4    # "excludedModuleClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .end local v7    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/bumptech/glide/module/GlideModule;>;"
    :cond_4
    const-string v10, "Glide"

    invoke-static {v10, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 199
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bumptech/glide/module/GlideModule;

    .line 200
    .local v6, "glideModule":Lcom/bumptech/glide/module/GlideModule;
    const-string v11, "Glide"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Discovered GlideModule from manifest: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 204
    .end local v6    # "glideModule":Lcom/bumptech/glide/module/GlideModule;
    :cond_5
    if-eqz v0, :cond_6

    .line 206
    invoke-virtual {v0}, Lcom/bumptech/glide/GeneratedAppGlideModule;->getRequestManagerFactory()Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    move-result-object v5

    .line 207
    .local v5, "factory":Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;
    :goto_2
    new-instance v10, Lcom/bumptech/glide/GlideBuilder;

    invoke-direct {v10}, Lcom/bumptech/glide/GlideBuilder;-><init>()V

    .line 208
    invoke-virtual {v10, v5}, Lcom/bumptech/glide/GlideBuilder;->setRequestManagerFactory(Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;)Lcom/bumptech/glide/GlideBuilder;

    move-result-object v2

    .line 209
    .local v2, "builder":Lcom/bumptech/glide/GlideBuilder;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/bumptech/glide/module/GlideModule;

    .line 210
    .local v9, "module":Lcom/bumptech/glide/module/GlideModule;
    invoke-interface {v9, v1, v2}, Lcom/bumptech/glide/module/GlideModule;->applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V

    goto :goto_3

    .line 206
    .end local v2    # "builder":Lcom/bumptech/glide/GlideBuilder;
    .end local v5    # "factory":Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;
    .end local v9    # "module":Lcom/bumptech/glide/module/GlideModule;
    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    .line 212
    .restart local v2    # "builder":Lcom/bumptech/glide/GlideBuilder;
    .restart local v5    # "factory":Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;
    :cond_7
    if-eqz v0, :cond_8

    .line 213
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/GeneratedAppGlideModule;->applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V

    .line 215
    :cond_8
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/GlideBuilder;->build(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v10

    sput-object v10, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    .line 216
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/bumptech/glide/module/GlideModule;

    .line 217
    .restart local v9    # "module":Lcom/bumptech/glide/module/GlideModule;
    sget-object v11, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    iget-object v11, v11, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    invoke-interface {v9, v1, v11}, Lcom/bumptech/glide/module/GlideModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Registry;)V

    goto :goto_4

    .line 219
    .end local v9    # "module":Lcom/bumptech/glide/module/GlideModule;
    :cond_9
    if-eqz v0, :cond_a

    .line 220
    sget-object v10, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    iget-object v10, v10, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    invoke-virtual {v0, v1, v10}, Lcom/bumptech/glide/GeneratedAppGlideModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Registry;)V

    .line 222
    :cond_a
    return-void
.end method

.method public static tearDown()V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 169
    const/4 v0, 0x0

    sput-object v0, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    .line 170
    return-void
.end method

.method public static with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 550
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->getRetriever(Landroid/content/Context;)Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0
.end method

.method public static with(Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;
    .locals 1
    .param p0, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 573
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->getRetriever(Landroid/content/Context;)Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0
.end method

.method public static with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 539
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->getRetriever(Landroid/content/Context;)Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0
.end method

.method public static with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;
    .locals 1
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 585
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->getRetriever(Landroid/content/Context;)Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0
.end method

.method public static with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;
    .locals 1
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 562
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->getRetriever(Landroid/content/Context;)Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0
.end method

.method public static with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 609
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->getRetriever(Landroid/content/Context;)Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearDiskCache()V
    .locals 1

    .prologue
    .line 471
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertBackgroundThread()V

    .line 472
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->engine:Lcom/bumptech/glide/load/engine/Engine;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/Engine;->clearDiskCache()V

    .line 473
    return-void
.end method

.method public clearMemory()V
    .locals 1

    .prologue
    .line 442
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 444
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->clearMemory()V

    .line 445
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->clearMemory()V

    .line 446
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->clearMemory()V

    .line 447
    return-void
.end method

.method public getArrayPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    return-object v0
.end method

.method public getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    return-object v0
.end method

.method getConnectivityMonitorFactory()Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->connectivityMonitorFactory:Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->glideContext:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v0}, Lcom/bumptech/glide/GlideContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method getGlideContext()Lcom/bumptech/glide/GlideContext;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->glideContext:Lcom/bumptech/glide/GlideContext;

    return-object v0
.end method

.method public getRegistry()Lcom/bumptech/glide/Registry;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    return-object v0
.end method

.method public getRequestManagerRetriever()Lcom/bumptech/glide/manager/RequestManagerRetriever;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->requestManagerRetriever:Lcom/bumptech/glide/manager/RequestManagerRetriever;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 653
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 657
    invoke-virtual {p0}, Lcom/bumptech/glide/Glide;->clearMemory()V

    .line 658
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 647
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/Glide;->trimMemory(I)V

    .line 648
    return-void
.end method

.method public varargs preFillBitmapPool([Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;)V
    .locals 1
    .param p1, "bitmapAttributeBuilders"    # [Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->bitmapPreFiller:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->preFill([Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;)V

    .line 432
    return-void
.end method

.method registerRequestManager(Lcom/bumptech/glide/RequestManager;)V
    .locals 3
    .param p1, "requestManager"    # Lcom/bumptech/glide/RequestManager;

    .prologue
    .line 628
    iget-object v1, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/List;

    monitor-enter v1

    .line 629
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot register already registered manager"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 633
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 632
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 634
    return-void
.end method

.method removeFromManagers(Lcom/bumptech/glide/request/target/Target;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 617
    .local p1, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<*>;"
    iget-object v2, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/List;

    monitor-enter v2

    .line 618
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestManager;

    .line 619
    .local v0, "requestManager":Lcom/bumptech/glide/RequestManager;
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->untrack(Lcom/bumptech/glide/request/target/Target;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 620
    monitor-exit v2

    return-void

    .line 623
    .end local v0    # "requestManager":Lcom/bumptech/glide/RequestManager;
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to remove target from managers"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 623
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setMemoryCategory(Lcom/bumptech/glide/MemoryCategory;)Lcom/bumptech/glide/MemoryCategory;
    .locals 3
    .param p1, "memoryCategory"    # Lcom/bumptech/glide/MemoryCategory;

    .prologue
    .line 497
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 499
    iget-object v1, p0, Lcom/bumptech/glide/Glide;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-virtual {p1}, Lcom/bumptech/glide/MemoryCategory;->getMultiplier()F

    move-result v2

    invoke-interface {v1, v2}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->setSizeMultiplier(F)V

    .line 500
    iget-object v1, p0, Lcom/bumptech/glide/Glide;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-virtual {p1}, Lcom/bumptech/glide/MemoryCategory;->getMultiplier()F

    move-result v2

    invoke-interface {v1, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->setSizeMultiplier(F)V

    .line 501
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->memoryCategory:Lcom/bumptech/glide/MemoryCategory;

    .line 502
    .local v0, "oldCategory":Lcom/bumptech/glide/MemoryCategory;
    iput-object p1, p0, Lcom/bumptech/glide/Glide;->memoryCategory:Lcom/bumptech/glide/MemoryCategory;

    .line 503
    return-object v0
.end method

.method public trimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 456
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 458
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->trimMemory(I)V

    .line 459
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->trimMemory(I)V

    .line 460
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->trimMemory(I)V

    .line 461
    return-void
.end method

.method unregisterRequestManager(Lcom/bumptech/glide/RequestManager;)V
    .locals 3
    .param p1, "requestManager"    # Lcom/bumptech/glide/RequestManager;

    .prologue
    .line 637
    iget-object v1, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/List;

    monitor-enter v1

    .line 638
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 639
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot register not yet registered manager"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 642
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 641
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 642
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 643
    return-void
.end method
