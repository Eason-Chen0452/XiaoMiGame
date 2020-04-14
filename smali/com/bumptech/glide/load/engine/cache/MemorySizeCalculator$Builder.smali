.class public final Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;
.super Ljava/lang/Object;
.source "MemorySizeCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field static final ARRAY_POOL_SIZE_BYTES:I = 0x400000

.field static final BITMAP_POOL_TARGET_SCREENS:I = 0x4

.field static final LOW_MEMORY_MAX_SIZE_MULTIPLIER:F = 0.33f

.field static final MAX_SIZE_MULTIPLIER:F = 0.4f

.field static final MEMORY_CACHE_TARGET_SCREENS:I = 0x2


# instance fields
.field private activityManager:Landroid/app/ActivityManager;

.field private arrayPoolSizeBytes:I

.field private bitmapPoolScreens:F

.field private final context:Landroid/content/Context;

.field private lowMemoryMaxSizeMultiplier:F

.field private maxSizeMultiplier:F

.field private memoryCacheScreens:F

.field private screenDimensions:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->memoryCacheScreens:F

    .line 141
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->bitmapPoolScreens:F

    .line 142
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->maxSizeMultiplier:F

    .line 143
    const v0, 0x3ea8f5c3    # 0.33f

    iput v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->lowMemoryMaxSizeMultiplier:F

    .line 144
    const/high16 v0, 0x400000

    iput v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->arrayPoolSizeBytes:I

    .line 147
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->context:Landroid/content/Context;

    .line 148
    const-string v0, "activity"

    .line 149
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->activityManager:Landroid/app/ActivityManager;

    .line 150
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions;

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions;-><init>(Landroid/util/DisplayMetrics;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->screenDimensions:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;

    .line 152
    return-void
.end method


# virtual methods
.method public build()Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;
    .locals 9

    .prologue
    .line 233
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->activityManager:Landroid/app/ActivityManager;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->screenDimensions:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;

    iget v4, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->memoryCacheScreens:F

    iget v5, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->bitmapPoolScreens:F

    iget v6, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->arrayPoolSizeBytes:I

    iget v7, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->maxSizeMultiplier:F

    iget v8, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->lowMemoryMaxSizeMultiplier:F

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;-><init>(Landroid/content/Context;Landroid/app/ActivityManager;Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;FFIFF)V

    return-object v0
.end method

.method setActivityManager(Landroid/app/ActivityManager;)Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;
    .locals 0
    .param p1, "activityManager"    # Landroid/app/ActivityManager;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->activityManager:Landroid/app/ActivityManager;

    .line 223
    return-object p0
.end method

.method public setArrayPoolSize(I)Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;
    .locals 0
    .param p1, "arrayPoolSizeBytes"    # I

    .prologue
    .line 216
    iput p1, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->arrayPoolSizeBytes:I

    .line 217
    return-object p0
.end method

.method public setBitmapPoolScreens(F)Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;
    .locals 2
    .param p1, "bitmapPoolScreens"    # F

    .prologue
    .line 172
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Bitmap pool screens must be greater than or equal to 0"

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 174
    iput p1, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->bitmapPoolScreens:F

    .line 175
    return-object p0

    .line 172
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLowMemoryMaxSizeMultiplier(F)Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;
    .locals 2
    .param p1, "lowMemoryMaxSizeMultiplier"    # F

    .prologue
    .line 200
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Low memory max size multiplier must be between 0 and 1"

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 203
    iput p1, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->lowMemoryMaxSizeMultiplier:F

    .line 204
    return-object p0

    .line 200
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMaxSizeMultiplier(F)Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;
    .locals 2
    .param p1, "maxSizeMultiplier"    # F

    .prologue
    .line 185
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Size multiplier must be between 0 and 1"

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 187
    iput p1, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->maxSizeMultiplier:F

    .line 188
    return-object p0

    .line 185
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMemoryCacheScreens(F)Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;
    .locals 2
    .param p1, "memoryCacheScreens"    # F

    .prologue
    .line 160
    iget v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->bitmapPoolScreens:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Memory cache screens must be greater than or equal to 0"

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 162
    iput p1, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->memoryCacheScreens:F

    .line 163
    return-object p0

    .line 160
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setScreenDimensions(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;)Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;
    .locals 0
    .param p1, "screenDimensions"    # Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->screenDimensions:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;

    .line 229
    return-object p0
.end method
