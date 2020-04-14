.class public final Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;
.super Ljava/lang/Object;
.source "BitmapPreFiller.java"


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private current:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

.field private final defaultFormat:Lcom/bumptech/glide/load/DecodeFormat;

.field private final handler:Landroid/os/Handler;

.field private final memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 2
    .param p1, "memoryCache"    # Lcom/bumptech/glide/load/engine/cache/MemoryCache;
    .param p2, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p3, "defaultFormat"    # Lcom/bumptech/glide/load/DecodeFormat;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->handler:Landroid/os/Handler;

    .line 28
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 29
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 30
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->defaultFormat:Lcom/bumptech/glide/load/DecodeFormat;

    .line 31
    return-void
.end method

.method private static getSizeInBytes(Lcom/bumptech/glide/load/engine/prefill/PreFillType;)I
    .locals 3
    .param p0, "size"    # Lcom/bumptech/glide/load/engine/prefill/PreFillType;

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    return v0
.end method


# virtual methods
.method varargs generateAllocationOrder([Lcom/bumptech/glide/load/engine/prefill/PreFillType;)Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;
    .locals 12
    .param p1, "preFillSizes"    # [Lcom/bumptech/glide/load/engine/prefill/PreFillType;

    .prologue
    const/4 v8, 0x0

    .line 55
    iget-object v9, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 56
    invoke-interface {v9}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->getMaxSize()I

    move-result v9

    iget-object v10, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v10}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->getCurrentSize()I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v10}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->getMaxSize()I

    move-result v10

    add-int v5, v9, v10

    .line 58
    .local v5, "maxSize":I
    const/4 v7, 0x0

    .line 59
    .local v7, "totalWeight":I
    array-length v10, p1

    move v9, v8

    :goto_0
    if-ge v9, v10, :cond_0

    aget-object v6, p1, v9

    .line 60
    .local v6, "size":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    invoke-virtual {v6}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getWeight()I

    move-result v11

    add-int/2addr v7, v11

    .line 59
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 63
    .end local v6    # "size":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    :cond_0
    int-to-float v9, v5

    int-to-float v10, v7

    div-float v4, v9, v10

    .line 65
    .local v4, "bytesPerWeight":F
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    .local v0, "attributeToCount":Ljava/util/Map;, "Ljava/util/Map<Lcom/bumptech/glide/load/engine/prefill/PreFillType;Ljava/lang/Integer;>;"
    array-length v9, p1

    :goto_1
    if-ge v8, v9, :cond_1

    aget-object v6, p1, v8

    .line 67
    .restart local v6    # "size":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    invoke-virtual {v6}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getWeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v4

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 68
    .local v2, "bytesForSize":I
    invoke-static {v6}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->getSizeInBytes(Lcom/bumptech/glide/load/engine/prefill/PreFillType;)I

    move-result v3

    .line 69
    .local v3, "bytesPerBitmap":I
    div-int v1, v2, v3

    .line 70
    .local v1, "bitmapsForSize":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 73
    .end local v1    # "bitmapsForSize":I
    .end local v2    # "bytesForSize":I
    .end local v3    # "bytesPerBitmap":I
    .end local v6    # "size":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    :cond_1
    new-instance v8, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;

    invoke-direct {v8, v0}, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;-><init>(Ljava/util/Map;)V

    return-object v8
.end method

.method public varargs preFill([Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;)V
    .locals 7
    .param p1, "bitmapAttributeBuilders"    # [Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;

    .prologue
    .line 34
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->current:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

    if-eqz v4, :cond_0

    .line 35
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->current:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->cancel()V

    .line 38
    :cond_0
    array-length v4, p1

    new-array v1, v4, [Lcom/bumptech/glide/load/engine/prefill/PreFillType;

    .line 39
    .local v1, "bitmapAttributes":[Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_3

    .line 40
    aget-object v2, p1, v3

    .line 41
    .local v2, "builder":Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    if-nez v4, :cond_1

    .line 42
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->defaultFormat:Lcom/bumptech/glide/load/DecodeFormat;

    sget-object v5, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    if-ne v4, v5, :cond_2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_1
    invoke-virtual {v2, v4}, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->setConfig(Landroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;

    .line 45
    :cond_1
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->build()Lcom/bumptech/glide/load/engine/prefill/PreFillType;

    move-result-object v4

    aput-object v4, v1, v3

    .line 39
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 42
    :cond_2
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    .line 48
    .end local v2    # "builder":Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
    :cond_3
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->generateAllocationOrder([Lcom/bumptech/glide/load/engine/prefill/PreFillType;)Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;

    move-result-object v0

    .line 49
    .local v0, "allocationOrder":Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;
    new-instance v4, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object v6, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-direct {v4, v5, v6, v0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;)V

    iput-object v4, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->current:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

    .line 50
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->current:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    return-void
.end method
