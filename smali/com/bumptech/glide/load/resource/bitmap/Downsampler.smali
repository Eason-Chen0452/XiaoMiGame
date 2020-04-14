.class public final Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
.super Ljava/lang/Object;
.source "Downsampler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;
    }
.end annotation


# static fields
.field public static final DECODE_FORMAT:Lcom/bumptech/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Option",
            "<",
            "Lcom/bumptech/glide/load/DecodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOWNSAMPLE_STRATEGY:Lcom/bumptech/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Option",
            "<",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_CALLBACKS:Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;

.field public static final FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS:Lcom/bumptech/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Option",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final ICO_MIME_TYPE:Ljava/lang/String; = "image/x-ico"

.field private static final MARK_POSITION:I = 0x500000

.field private static final NO_DOWNSAMPLE_PRE_N_MIME_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OPTIONS_QUEUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/graphics/BitmapFactory$Options;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Downsampler"

.field private static final TYPES_THAT_USE_POOL_PRE_KITKAT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;",
            ">;"
        }
    .end annotation
.end field

.field private static final WBMP_MIME_TYPE:Ljava/lang/String; = "image/vnd.wap.wbmp"


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field private final displayMetrics:Landroid/util/DisplayMetrics;

.field private final parsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 43
    const-string v0, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat"

    sget-object v1, Lcom/bumptech/glide/load/DecodeFormat;->DEFAULT:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/Option;->memory(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/Option;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->DECODE_FORMAT:Lcom/bumptech/glide/load/Option;

    .line 50
    const-string v0, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy"

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->AT_LEAST:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    .line 51
    invoke-static {v0, v1}, Lcom/bumptech/glide/load/Option;->memory(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/Option;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->DOWNSAMPLE_STRATEGY:Lcom/bumptech/glide/load/Option;

    .line 64
    const-string v0, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize"

    .line 65
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/Option;->memory(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/Option;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS:Lcom/bumptech/glide/load/Option;

    .line 69
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "image/vnd.wap.wbmp"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "image/x-ico"

    aput-object v3, v1, v2

    .line 72
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 70
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->NO_DOWNSAMPLE_PRE_N_MIME_TYPES:Ljava/util/Set;

    .line 78
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->EMPTY_CALLBACKS:Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;

    .line 89
    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 91
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 90
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->TYPES_THAT_USE_POOL_PRE_KITKAT:Ljava/util/Set;

    .line 97
    invoke-static {v4}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .locals 1
    .param p2, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .param p3, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p4, "byteArrayPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Landroid/util/DisplayMetrics;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "parsers":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/ImageHeaderParser;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->parsers:Ljava/util/List;

    .line 110
    invoke-static {p2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/DisplayMetrics;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 111
    invoke-static {p3}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 112
    invoke-static {p4}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 113
    return-void
.end method

.method static calculateScaling(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;IIIIILandroid/graphics/BitmapFactory$Options;)V
    .locals 17
    .param p0, "downsampleStrategy"    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
    .param p1, "degreesToRotate"    # I
    .param p2, "sourceWidth"    # I
    .param p3, "sourceHeight"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 271
    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    const/16 v14, 0x5a

    move/from16 v0, p1

    if-eq v0, v14, :cond_2

    const/16 v14, 0x10e

    move/from16 v0, p1

    if-ne v0, v14, :cond_3

    .line 281
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->getScaleFactor(IIII)F

    move-result v6

    .line 288
    .local v6, "exactScaleFactor":F
    :goto_1
    const/4 v14, 0x0

    cmpg-float v14, v6, v14

    if-gtz v14, :cond_4

    .line 289
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot scale with factor: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " from: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 285
    .end local v6    # "exactScaleFactor":F
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->getScaleFactor(IIII)F

    move-result v6

    .restart local v6    # "exactScaleFactor":F
    goto :goto_1

    .line 292
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->getSampleSizeRounding(IIII)Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    move-result-object v11

    .line 294
    .local v11, "rounding":Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;
    if-nez v11, :cond_5

    .line 295
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "Cannot round with null rounding"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 298
    :cond_5
    move/from16 v0, p2

    int-to-float v14, v0

    mul-float/2addr v14, v6

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v9, v14

    .line 299
    .local v9, "outWidth":I
    move/from16 v0, p3

    int-to-float v14, v0

    mul-float/2addr v14, v6

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v8, v14

    .line 301
    .local v8, "outHeight":I
    div-int v13, p2, v9

    .line 302
    .local v13, "widthScaleFactor":I
    div-int v7, p3, v8

    .line 304
    .local v7, "heightScaleFactor":I
    sget-object v14, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->MEMORY:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    if-ne v11, v14, :cond_8

    .line 305
    invoke-static {v13, v7}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 310
    .local v12, "scaleFactor":I
    :goto_2
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x17

    if-gt v14, v15, :cond_9

    sget-object v14, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->NO_DOWNSAMPLE_PRE_N_MIME_TYPES:Ljava/util/Set;

    move-object/from16 v0, p6

    iget-object v15, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 311
    invoke-interface {v14, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 312
    const/4 v10, 0x1

    .line 321
    .local v10, "powerOfTwoSampleSize":I
    :cond_6
    :goto_3
    int-to-float v14, v10

    mul-float v5, v14, v6

    .line 323
    .local v5, "adjustedScaleFactor":F
    move-object/from16 v0, p6

    iput v10, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 326
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x13

    if-lt v14, v15, :cond_7

    .line 327
    const/high16 v14, 0x447a0000    # 1000.0f

    mul-float/2addr v14, v5

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v14, v14

    move-object/from16 v0, p6

    iput v14, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 328
    const/16 v14, 0x3e8

    move-object/from16 v0, p6

    iput v14, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 330
    :cond_7
    invoke-static/range {p6 .. p6}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->isScaling(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 331
    const/4 v14, 0x1

    move-object/from16 v0, p6

    iput-boolean v14, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 336
    :goto_4
    const-string v14, "Downsampler"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 337
    const-string v14, "Downsampler"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Calculate scaling, source: ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], target: ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p4

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p5

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], exact scale factor: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", power of 2 sample size: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", adjusted scale factor: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", target density: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p6

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", density: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p6

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 306
    .end local v5    # "adjustedScaleFactor":F
    .end local v10    # "powerOfTwoSampleSize":I
    .end local v12    # "scaleFactor":I
    :cond_8
    invoke-static {v13, v7}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto/16 :goto_2

    .line 314
    .restart local v12    # "scaleFactor":I
    :cond_9
    const/4 v14, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 315
    .restart local v10    # "powerOfTwoSampleSize":I
    sget-object v14, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->MEMORY:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    if-ne v11, v14, :cond_6

    int-to-float v14, v10

    const/high16 v15, 0x3f800000    # 1.0f

    div-float/2addr v15, v6

    cmpg-float v14, v14, v15

    if-gez v14, :cond_6

    .line 317
    shl-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 333
    .restart local v5    # "adjustedScaleFactor":F
    :cond_a
    const/4 v14, 0x0

    move-object/from16 v0, p6

    iput v14, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    move-object/from16 v0, p6

    iput v14, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto/16 :goto_4
.end method

.method private decodeFromWrappedStreams(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/DecodeFormat;IIZLcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Landroid/graphics/Bitmap;
    .locals 27
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p3, "downsampleStrategy"    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
    .param p4, "decodeFormat"    # Lcom/bumptech/glide/load/DecodeFormat;
    .param p5, "requestedWidth"    # I
    .param p6, "requestedHeight"    # I
    .param p7, "fixBitmapToRequestedDimensions"    # Z
    .param p8, "callbacks"    # Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p8

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getDimensions(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)[I

    move-result-object v26

    .line 192
    .local v26, "sourceDimensions":[I
    const/4 v4, 0x0

    aget v6, v26, v4

    .line 193
    .local v6, "sourceWidth":I
    const/4 v4, 0x1

    aget v7, v26, v4

    .line 194
    .local v7, "sourceHeight":I
    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 196
    .local v12, "sourceMimeType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->parsers:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    move-object/from16 v0, p1

    invoke-static {v4, v0, v10}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getOrientation(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I

    move-result v23

    .line 197
    .local v23, "orientation":I
    invoke-static/range {v23 .. v23}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getExifOrientationDegrees(I)I

    move-result v5

    .line 199
    .local v5, "degreesToRotate":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getConfig(Ljava/io/InputStream;Lcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap$Config;

    move-result-object v4

    move-object/from16 v0, p2

    iput-object v4, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 200
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v4, v10, :cond_0

    .line 201
    const/4 v4, 0x1

    move-object/from16 v0, p2

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 204
    :cond_0
    const/high16 v4, -0x80000000

    move/from16 v0, p5

    if-ne v0, v4, :cond_6

    move v8, v6

    .line 205
    .local v8, "targetWidth":I
    :goto_0
    const/high16 v4, -0x80000000

    move/from16 v0, p6

    if-ne v0, v4, :cond_7

    move v9, v7

    .local v9, "targetHeight":I
    :goto_1
    move-object/from16 v4, p3

    move-object/from16 v10, p2

    .line 207
    invoke-static/range {v4 .. v10}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->calculateScaling(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;IIIIILandroid/graphics/BitmapFactory$Options;)V

    .line 210
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x13

    if-lt v4, v10, :cond_8

    const/16 v22, 0x1

    .line 212
    .local v22, "isKitKatOrGreater":Z
    :goto_2
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v10, 0x1

    if-eq v4, v10, :cond_1

    if-eqz v22, :cond_3

    .line 213
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->shouldUsePool(Ljava/io/InputStream;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 216
    if-eqz p7, :cond_9

    if-eqz v22, :cond_9

    .line 217
    move/from16 v21, v8

    .line 218
    .local v21, "expectedWidth":I
    move/from16 v20, v9

    .line 239
    .local v20, "expectedHeight":I
    :cond_2
    :goto_3
    if-lez v21, :cond_3

    if-lez v20, :cond_3

    .line 240
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-static {v0, v4, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->setInBitmap(Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)V

    .line 243
    .end local v20    # "expectedHeight":I
    .end local v21    # "expectedWidth":I
    :cond_3
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p8

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 244
    .local v14, "downsampled":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object/from16 v0, p8

    invoke-interface {v0, v4, v14}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;->onDecodeComplete(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)V

    .line 246
    const-string v4, "Downsampler"

    const/4 v10, 0x2

    invoke-static {v4, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    move v10, v6

    move v11, v7

    move-object/from16 v13, p2

    move/from16 v15, p5

    move/from16 v16, p6

    .line 247
    invoke-static/range {v10 .. v16}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->logDecode(IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;II)V

    .line 251
    :cond_4
    const/16 v24, 0x0

    .line 252
    .local v24, "rotated":Landroid/graphics/Bitmap;
    if-eqz v14, :cond_5

    .line 255
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v14, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move/from16 v0, v23

    invoke-static {v4, v14, v0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->rotateImageExif(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 258
    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 259
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v4, v14}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    .line 263
    :cond_5
    return-object v24

    .end local v8    # "targetWidth":I
    .end local v9    # "targetHeight":I
    .end local v14    # "downsampled":Landroid/graphics/Bitmap;
    .end local v22    # "isKitKatOrGreater":Z
    .end local v24    # "rotated":Landroid/graphics/Bitmap;
    :cond_6
    move/from16 v8, p5

    .line 204
    goto/16 :goto_0

    .restart local v8    # "targetWidth":I
    :cond_7
    move/from16 v9, p6

    .line 205
    goto/16 :goto_1

    .line 210
    .restart local v9    # "targetHeight":I
    :cond_8
    const/16 v22, 0x0

    goto :goto_2

    .line 220
    .restart local v22    # "isKitKatOrGreater":Z
    :cond_9
    invoke-static/range {p2 .. p2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->isScaling(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    int-to-float v4, v4

    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    int-to-float v10, v10

    div-float v17, v4, v10

    .line 222
    .local v17, "densityMultiplier":F
    :goto_4
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move/from16 v25, v0

    .line 223
    .local v25, "sampleSize":I
    int-to-float v4, v6

    move/from16 v0, v25

    int-to-float v10, v0

    div-float/2addr v4, v10

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v0, v10

    move/from16 v19, v0

    .line 224
    .local v19, "downsampledWidth":I
    int-to-float v4, v7

    move/from16 v0, v25

    int-to-float v10, v0

    div-float/2addr v4, v10

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v0, v10

    move/from16 v18, v0

    .line 225
    .local v18, "downsampledHeight":I
    move/from16 v0, v19

    int-to-float v4, v0

    mul-float v4, v4, v17

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v21

    .line 226
    .restart local v21    # "expectedWidth":I
    move/from16 v0, v18

    int-to-float v4, v0

    mul-float v4, v4, v17

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v20

    .line 228
    .restart local v20    # "expectedHeight":I
    const-string v4, "Downsampler"

    const/4 v10, 0x2

    invoke-static {v4, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 229
    const-string v4, "Downsampler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Calculated target ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] for source ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "], sampleSize: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", targetDensity: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", density: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", density multiplier: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 220
    .end local v17    # "densityMultiplier":F
    .end local v18    # "downsampledHeight":I
    .end local v19    # "downsampledWidth":I
    .end local v20    # "expectedHeight":I
    .end local v21    # "expectedWidth":I
    .end local v25    # "sampleSize":I
    :cond_a
    const/high16 v17, 0x3f800000    # 1.0f

    goto/16 :goto_4
.end method

.method private static decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "callbacks"    # Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    iget-boolean v5, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v5, :cond_1

    .line 407
    const/high16 v5, 0x500000

    invoke-virtual {p0, v5}, Ljava/io/InputStream;->mark(I)V

    .line 418
    :goto_0
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 419
    .local v4, "sourceWidth":I
    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 420
    .local v3, "sourceHeight":I
    iget-object v1, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 422
    .local v1, "outMimeType":Ljava/lang/String;
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getBitmapDrawableLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 424
    const/4 v5, 0x0

    :try_start_0
    invoke-static {p0, v5, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 428
    .local v2, "result":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getBitmapDrawableLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 431
    iget-boolean v5, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v5, :cond_0

    .line 432
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 435
    :cond_0
    return-object v2

    .line 414
    .end local v1    # "outMimeType":Ljava/lang/String;
    .end local v2    # "result":Landroid/graphics/Bitmap;
    .end local v3    # "sourceHeight":I
    .end local v4    # "sourceWidth":I
    :cond_1
    invoke-interface {p2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;->onObtainBounds()V

    goto :goto_0

    .line 425
    .restart local v1    # "outMimeType":Ljava/lang/String;
    .restart local v3    # "sourceHeight":I
    .restart local v4    # "sourceWidth":I
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-static {v0, v4, v3, v1, p1}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->newIoExceptionForInBitmapAssertion(Ljava/lang/IllegalArgumentException;IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Ljava/io/IOException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 428
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v5

    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getBitmapDrawableLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
.end method

.method private static getBitmapString(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 462
    if-nez p0, :cond_0

    .line 463
    const/4 v1, 0x0

    .line 468
    :goto_0
    return-object v1

    .line 466
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 467
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "sizeString":Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 467
    .end local v0    # "sizeString":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method private getConfig(Ljava/io/InputStream;Lcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap$Config;
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "format"    # Lcom/bumptech/glide/load/DecodeFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    sget-object v2, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    if-eq p2, v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    .line 372
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 385
    :goto_0
    return-object v2

    .line 375
    :cond_1
    const/4 v1, 0x0

    .line 377
    .local v1, "hasAlpha":Z
    :try_start_0
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->parsers:Ljava/util/List;

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-static {v2, p1, v3}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getType(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->hasAlpha()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 385
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Downsampler"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 380
    const-string v2, "Downsampler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot determine whether the image has alpha or not from header, format "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 385
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private static declared-synchronized getDefaultOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 4

    .prologue
    .line 493
    const-class v2, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 494
    :try_start_1
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapFactory$Options;

    .line 495
    .local v0, "decodeBitmapOptions":Landroid/graphics/BitmapFactory$Options;
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 496
    if-nez v0, :cond_0

    .line 497
    :try_start_2
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .end local v0    # "decodeBitmapOptions":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 498
    .restart local v0    # "decodeBitmapOptions":Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->resetOptions(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 501
    :cond_0
    monitor-exit v2

    return-object v0

    .line 495
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 493
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static getDimensions(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)[I
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "decodeCallbacks"    # Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 398
    iput-boolean v3, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 399
    invoke-static {p0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Landroid/graphics/Bitmap;

    .line 400
    iput-boolean v2, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 401
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v1, v0, v2

    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v1, v0, v3

    return-object v0
.end method

.method private static getInBitmapString(Landroid/graphics/BitmapFactory$Options;)Ljava/lang/String;
    .locals 1
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 456
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getBitmapString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isScaling(Landroid/graphics/BitmapFactory$Options;)Z
    .locals 2
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 439
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static logDecode(IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;II)V
    .locals 3
    .param p0, "sourceWidth"    # I
    .param p1, "sourceHeight"    # I
    .param p2, "outMimeType"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p4, "result"    # Landroid/graphics/Bitmap;
    .param p5, "requestedWidth"    # I
    .param p6, "requestedHeight"    # I

    .prologue
    .line 445
    const-string v0, "Downsampler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decoded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getBitmapString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with inBitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 447
    invoke-static {p3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getInBitmapString(Landroid/graphics/BitmapFactory$Options;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], sample size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", density: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", target density: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 452
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 445
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-void
.end method

.method private static newIoExceptionForInBitmapAssertion(Ljava/lang/IllegalArgumentException;IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Ljava/io/IOException;
    .locals 3
    .param p0, "e"    # Ljava/lang/IllegalArgumentException;
    .param p1, "outWidth"    # I
    .param p2, "outHeight"    # I
    .param p3, "outMimeType"    # Ljava/lang/String;
    .param p4, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 478
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception decoding bitmap, outWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", outHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", outMimeType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", inBitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 482
    invoke-static {p4}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getInBitmapString(Landroid/graphics/BitmapFactory$Options;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 478
    return-object v0
.end method

.method private static releaseOptions(Landroid/graphics/BitmapFactory$Options;)V
    .locals 2
    .param p0, "decodeBitmapOptions"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 505
    invoke-static {p0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->resetOptions(Landroid/graphics/BitmapFactory$Options;)V

    .line 506
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    monitor-enter v1

    .line 507
    :try_start_0
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 508
    monitor-exit v1

    .line 509
    return-void

    .line 508
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static resetOptions(Landroid/graphics/BitmapFactory$Options;)V
    .locals 3
    .param p0, "decodeBitmapOptions"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 512
    iput-object v1, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 513
    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 514
    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 515
    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 516
    iput-object v1, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 517
    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 518
    iput v0, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 519
    iput v0, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 520
    iput v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 521
    iput v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 522
    iput-object v1, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 523
    iput-object v1, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 524
    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 525
    return-void
.end method

.method private static setInBitmap(Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)V
    .locals 1
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 488
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-interface {p1, p2, p3, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 489
    return-void
.end method

.method private shouldUsePool(Ljava/io/InputStream;)Z
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 352
    const/4 v2, 0x1

    .line 365
    :goto_0
    return v2

    .line 356
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->parsers:Ljava/util/List;

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-static {v2, p1, v3}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getType(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v1

    .line 359
    .local v1, "type":Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->TYPES_THAT_USE_POOL_PRE_KITKAT:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 360
    .end local v1    # "type":Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Downsampler"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 362
    const-string v2, "Downsampler"

    const-string v3, "Cannot determine the image type from header"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "outWidth"    # I
    .param p3, "outHeight"    # I
    .param p4, "options"    # Lcom/bumptech/glide/load/Options;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    sget-object v5, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->EMPTY_CALLBACKS:Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decode(Ljava/io/InputStream;IILcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    return-object v0
.end method

.method public decode(Ljava/io/InputStream;IILcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 11
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "requestedWidth"    # I
    .param p3, "requestedHeight"    # I
    .param p4, "options"    # Lcom/bumptech/glide/load/Options;
    .param p5, "callbacks"    # Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            "Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    const-string v1, "You must provide an InputStream that supports mark()"

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    const/high16 v1, 0x10000

    const-class v5, [B

    invoke-interface {v0, v1, v5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->get(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 168
    .local v9, "bytesForOptions":[B
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 169
    .local v2, "bitmapFactoryOptions":Landroid/graphics/BitmapFactory$Options;
    iput-object v9, v2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 171
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->DECODE_FORMAT:Lcom/bumptech/glide/load/Option;

    invoke-virtual {p4, v0}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/load/DecodeFormat;

    .line 172
    .local v4, "decodeFormat":Lcom/bumptech/glide/load/DecodeFormat;
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->DOWNSAMPLE_STRATEGY:Lcom/bumptech/glide/load/Option;

    invoke-virtual {p4, v0}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    .line 173
    .local v3, "downsampleStrategy":Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS:Lcom/bumptech/glide/load/Option;

    invoke-virtual {p4, v0}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .local v7, "fixBitmapToRequestedDimensions":Z
    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    move-object/from16 v8, p5

    .line 176
    :try_start_0
    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decodeFromWrappedStreams(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/DecodeFormat;IIZLcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 179
    .local v10, "result":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {v10, v0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 181
    invoke-static {v2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->releaseOptions(Landroid/graphics/BitmapFactory$Options;)V

    .line 182
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    const-class v5, [B

    invoke-interface {v1, v9, v5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 179
    return-object v0

    .line 181
    .end local v10    # "result":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->releaseOptions(Landroid/graphics/BitmapFactory$Options;)V

    .line 182
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    const-class v5, [B

    invoke-interface {v1, v9, v5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;Ljava/lang/Class;)V

    throw v0
.end method

.method public handles(Ljava/io/InputStream;)Z
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public handles(Ljava/nio/ByteBuffer;)Z
    .locals 1
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 122
    const/4 v0, 0x1

    return v0
.end method
