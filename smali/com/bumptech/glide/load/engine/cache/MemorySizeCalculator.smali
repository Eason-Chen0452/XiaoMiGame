.class public final Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;
.super Ljava/lang/Object;
.source "MemorySizeCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions;,
        Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;,
        Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;
    }
.end annotation


# static fields
.field static final BYTES_PER_ARGB_8888_PIXEL:I = 0x4

.field static final LOW_MEMORY_BYTE_ARRAY_POOL_DIVISOR:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MemorySizeCalculator"


# instance fields
.field private final arrayPoolSize:I

.field private final bitmapPoolSize:I

.field private final context:Landroid/content/Context;

.field private final memoryCacheSize:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/ActivityManager;Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;FFIFF)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/ActivityManager;
    .param p3, "screenDimensions"    # Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;
    .param p4, "memoryCacheScreens"    # F
    .param p5, "bitmapPoolScreens"    # F
    .param p6, "targetArrayPoolSize"    # I
    .param p7, "maxSizeMultiplier"    # F
    .param p8, "lowMemoryMaxSizeMultiplier"    # F

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->context:Landroid/content/Context;

    .line 36
    invoke-static {p2}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->isLowMemoryDevice(Landroid/app/ActivityManager;)Z

    move-result v8

    if-eqz v8, :cond_0

    div-int/lit8 p6, p6, 0x2

    .end local p6    # "targetArrayPoolSize":I
    :cond_0
    move/from16 v0, p6

    iput v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->arrayPoolSize:I

    .line 39
    move/from16 v0, p7

    move/from16 v1, p8

    invoke-static {p2, v0, v1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->getMaxSize(Landroid/app/ActivityManager;FF)I

    move-result v3

    .line 41
    .local v3, "maxSize":I
    invoke-interface {p3}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;->getWidthPixels()I

    move-result v8

    invoke-interface {p3}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;->getHeightPixels()I

    move-result v9

    mul-int/2addr v8, v9

    mul-int/lit8 v5, v8, 0x4

    .line 44
    .local v5, "screenSize":I
    int-to-float v8, v5

    mul-float v8, v8, p5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 45
    .local v7, "targetPoolSize":I
    int-to-float v8, v5

    mul-float/2addr v8, p4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 46
    .local v6, "targetMemoryCacheSize":I
    iget v8, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->arrayPoolSize:I

    sub-int v2, v3, v8

    .line 48
    .local v2, "availableSize":I
    add-int v8, v6, v7

    if-gt v8, v2, :cond_2

    .line 49
    iput v6, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->memoryCacheSize:I

    .line 50
    iput v7, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->bitmapPoolSize:I

    .line 57
    :goto_0
    const-string v8, "MemorySizeCalculator"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 58
    const-string v9, "MemorySizeCalculator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Calculation complete, Calculated memory cache size: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->memoryCacheSize:I

    .line 62
    invoke-direct {p0, v10}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->toMb(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", pool size: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->bitmapPoolSize:I

    .line 64
    invoke-direct {p0, v10}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->toMb(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", byte array size: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->arrayPoolSize:I

    .line 66
    invoke-direct {p0, v10}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->toMb(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", memory class limited? "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int v8, v6, v7

    if-le v8, v3, :cond_3

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", max size: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 70
    invoke-direct {p0, v3}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->toMb(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", memoryClass: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 72
    invoke-virtual {p2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", isLowMemoryDevice: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 74
    invoke-static {p2}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->isLowMemoryDevice(Landroid/app/ActivityManager;)Z

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 58
    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_1
    return-void

    .line 52
    :cond_2
    int-to-float v8, v2

    add-float v9, p5, p4

    div-float v4, v8, v9

    .line 53
    .local v4, "part":F
    mul-float v8, v4, p4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->memoryCacheSize:I

    .line 54
    mul-float v8, v4, p5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->bitmapPoolSize:I

    goto/16 :goto_0

    .line 66
    .end local v4    # "part":F
    :cond_3
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private static getMaxSize(Landroid/app/ActivityManager;FF)I
    .locals 3
    .param p0, "activityManager"    # Landroid/app/ActivityManager;
    .param p1, "maxSizeMultiplier"    # F
    .param p2, "lowMemoryMaxSizeMultiplier"    # F

    .prologue
    .line 101
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    mul-int/lit16 v1, v2, 0x400

    .line 102
    .local v1, "memoryClassBytes":I
    invoke-static {p0}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->isLowMemoryDevice(Landroid/app/ActivityManager;)Z

    move-result v0

    .line 103
    .local v0, "isLowMemoryDevice":Z
    int-to-float v2, v1

    if-eqz v0, :cond_0

    .end local p2    # "lowMemoryMaxSizeMultiplier":F
    :goto_0
    mul-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2

    .restart local p2    # "lowMemoryMaxSizeMultiplier":F
    :cond_0
    move p2, p1

    goto :goto_0
.end method

.method private static isLowMemoryDevice(Landroid/app/ActivityManager;)Z
    .locals 2
    .param p0, "activityManager"    # Landroid/app/ActivityManager;

    .prologue
    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 115
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    .line 117
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toMb(I)Ljava/lang/String;
    .locals 4
    .param p1, "bytes"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->context:Landroid/content/Context;

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getArrayPoolSizeInBytes()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->arrayPoolSize:I

    return v0
.end method

.method public getBitmapPoolSize()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->bitmapPoolSize:I

    return v0
.end method

.method public getMemoryCacheSize()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->memoryCacheSize:I

    return v0
.end method
