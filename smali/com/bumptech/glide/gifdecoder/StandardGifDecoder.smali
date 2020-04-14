.class public Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;
.super Ljava/lang/Object;
.source "StandardGifDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/gifdecoder/GifDecoder;


# static fields
.field private static final BYTES_PER_INTEGER:I = 0x4

.field private static final COLOR_TRANSPARENT_BLACK:I = 0x0
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private static final INITIAL_FRAME_POINTER:I = -0x1

.field private static final MASK_INT_LOWEST_BYTE:I = 0xff

.field private static final MAX_STACK_SIZE:I = 0x1000

.field private static final NULL_CODE:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field private static final WORK_BUFFER_SIZE:I = 0x4000


# instance fields
.field private act:[I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

.field private block:[B

.field private downsampledHeight:I

.field private downsampledWidth:I

.field private framePointer:I

.field private header:Lcom/bumptech/glide/gifdecoder/GifHeader;

.field private isFirstFrameTransparent:Z

.field private mainPixels:[B

.field private mainScratch:[I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private parser:Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

.field private final pct:[I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private pixelStack:[B

.field private prefix:[S

.field private previousImage:Landroid/graphics/Bitmap;

.field private rawData:Ljava/nio/ByteBuffer;

.field private sampleSize:I

.field private savePrevious:Z

.field private status:I

.field private suffix:[B

.field private workBuffer:[B
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private workBufferPosition:I

.field private workBufferSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->pct:[I

    .line 100
    iput v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->workBufferSize:I

    .line 101
    iput v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->workBufferPosition:I

    .line 139
    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 140
    new-instance v0, Lcom/bumptech/glide/gifdecoder/GifHeader;

    invoke-direct {v0}, Lcom/bumptech/glide/gifdecoder/GifHeader;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 141
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "provider"    # Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;
    .param p2, "gifHeader"    # Lcom/bumptech/glide/gifdecoder/GifHeader;
    .param p3, "rawData"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 127
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;-><init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;I)V

    .line 128
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;I)V
    .locals 0
    .param p1, "provider"    # Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;
    .param p2, "gifHeader"    # Lcom/bumptech/glide/gifdecoder/GifHeader;
    .param p3, "rawData"    # Ljava/nio/ByteBuffer;
    .param p4, "sampleSize"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;-><init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)V

    .line 134
    invoke-virtual {p0, p2, p3, p4}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->setData(Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;I)V

    .line 135
    return-void
.end method

.method private averageColorsNear(III)I
    .locals 10
    .param p1, "positionInMainPixels"    # I
    .param p2, "maxPositionInMainPixels"    # I
    .param p3, "currentFrameIw"    # I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 540
    const/4 v0, 0x0

    .line 541
    .local v0, "alphaSum":I
    const/4 v6, 0x0

    .line 542
    .local v6, "redSum":I
    const/4 v4, 0x0

    .line 543
    .local v4, "greenSum":I
    const/4 v1, 0x0

    .line 545
    .local v1, "blueSum":I
    const/4 v7, 0x0

    .line 547
    .local v7, "totalAdded":I
    move v5, p1

    .line 549
    .local v5, "i":I
    :goto_0
    iget v8, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->sampleSize:I

    add-int/2addr v8, p1

    if-ge v5, v8, :cond_1

    iget-object v8, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

    array-length v8, v8

    if-ge v5, v8, :cond_1

    if-ge v5, p2, :cond_1

    .line 550
    iget-object v8, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

    aget-byte v8, v8, v5

    and-int/lit16 v3, v8, 0xff

    .line 551
    .local v3, "currentColorIndex":I
    iget-object v8, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->act:[I

    aget v2, v8, v3

    .line 552
    .local v2, "currentColor":I
    if-eqz v2, :cond_0

    .line 553
    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v0, v8

    .line 554
    shr-int/lit8 v8, v2, 0x10

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v6, v8

    .line 555
    shr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v4, v8

    .line 556
    and-int/lit16 v8, v2, 0xff

    add-int/2addr v1, v8

    .line 557
    add-int/lit8 v7, v7, 0x1

    .line 549
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 561
    .end local v2    # "currentColor":I
    .end local v3    # "currentColorIndex":I
    :cond_1
    add-int v5, p1, p3

    .line 563
    :goto_1
    add-int v8, p1, p3

    iget v9, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->sampleSize:I

    add-int/2addr v8, v9

    if-ge v5, v8, :cond_3

    iget-object v8, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

    array-length v8, v8

    if-ge v5, v8, :cond_3

    if-ge v5, p2, :cond_3

    .line 564
    iget-object v8, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

    aget-byte v8, v8, v5

    and-int/lit16 v3, v8, 0xff

    .line 565
    .restart local v3    # "currentColorIndex":I
    iget-object v8, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->act:[I

    aget v2, v8, v3

    .line 566
    .restart local v2    # "currentColor":I
    if-eqz v2, :cond_2

    .line 567
    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v0, v8

    .line 568
    shr-int/lit8 v8, v2, 0x10

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v6, v8

    .line 569
    shr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v4, v8

    .line 570
    and-int/lit16 v8, v2, 0xff

    add-int/2addr v1, v8

    .line 571
    add-int/lit8 v7, v7, 0x1

    .line 563
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 574
    .end local v2    # "currentColor":I
    .end local v3    # "currentColorIndex":I
    :cond_3
    if-nez v7, :cond_4

    .line 575
    const/4 v8, 0x0

    .line 577
    :goto_2
    return v8

    :cond_4
    div-int v8, v0, v7

    shl-int/lit8 v8, v8, 0x18

    div-int v9, v6, v7

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    div-int v9, v4, v7

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    div-int v9, v1, v7

    or-int/2addr v8, v9

    goto :goto_2
.end method

.method private decodeBitmapData(Lcom/bumptech/glide/gifdecoder/GifFrame;)V
    .locals 24
    .param p1, "frame"    # Lcom/bumptech/glide/gifdecoder/GifFrame;

    .prologue
    .line 588
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->workBufferSize:I

    .line 589
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->workBufferPosition:I

    .line 590
    if-eqz p1, :cond_0

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->rawData:Ljava/nio/ByteBuffer;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->bufferFrameStart:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 595
    :cond_0
    if-nez p1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    move/from16 v23, v0

    mul-int v16, v22, v23

    .line 599
    .local v16, "npix":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    .line 601
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

    .line 603
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->prefix:[S

    move-object/from16 v22, v0

    if-nez v22, :cond_3

    .line 604
    const/16 v22, 0x1000

    move/from16 v0, v22

    new-array v0, v0, [S

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->prefix:[S

    .line 606
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->suffix:[B

    move-object/from16 v22, v0

    if-nez v22, :cond_4

    .line 607
    const/16 v22, 0x1000

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->suffix:[B

    .line 609
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->pixelStack:[B

    move-object/from16 v22, v0

    if-nez v22, :cond_5

    .line 610
    const/16 v22, 0x1001

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->pixelStack:[B

    .line 614
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->readByte()I

    move-result v10

    .line 615
    .local v10, "dataSize":I
    const/16 v22, 0x1

    shl-int v5, v22, v10

    .line 616
    .local v5, "clear":I
    add-int/lit8 v12, v5, 0x1

    .line 617
    .local v12, "endOfInformation":I
    add-int/lit8 v2, v5, 0x2

    .line 618
    .local v2, "available":I
    const/16 v17, -0x1

    .line 619
    .local v17, "oldCode":I
    add-int/lit8 v8, v10, 0x1

    .line 620
    .local v8, "codeSize":I
    const/16 v22, 0x1

    shl-int v22, v22, v8

    add-int/lit8 v7, v22, -0x1

    .line 621
    .local v7, "codeMask":I
    const/4 v6, 0x0

    .local v6, "code":I
    :goto_1
    if-ge v6, v5, :cond_7

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->prefix:[S

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-short v23, v22, v6

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->suffix:[B

    move-object/from16 v22, v0

    int-to-byte v0, v6

    move/from16 v23, v0

    aput-byte v23, v22, v6

    .line 621
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 595
    .end local v2    # "available":I
    .end local v5    # "clear":I
    .end local v6    # "code":I
    .end local v7    # "codeMask":I
    .end local v8    # "codeSize":I
    .end local v10    # "dataSize":I
    .end local v12    # "endOfInformation":I
    .end local v16    # "npix":I
    .end local v17    # "oldCode":I
    :cond_6
    move-object/from16 v0, p1

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    move/from16 v23, v0

    mul-int v16, v22, v23

    goto/16 :goto_0

    .line 628
    .restart local v2    # "available":I
    .restart local v5    # "clear":I
    .restart local v6    # "code":I
    .restart local v7    # "codeMask":I
    .restart local v8    # "codeSize":I
    .restart local v10    # "dataSize":I
    .restart local v12    # "endOfInformation":I
    .restart local v16    # "npix":I
    .restart local v17    # "oldCode":I
    :cond_7
    const/4 v3, 0x0

    .local v3, "bi":I
    move/from16 v18, v3

    .local v18, "pi":I
    move/from16 v20, v3

    .local v20, "top":I
    move v13, v3

    .local v13, "first":I
    move v9, v3

    .local v9, "count":I
    move v4, v3

    .local v4, "bits":I
    move v11, v3

    .line 629
    .local v11, "datum":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v14, v0, :cond_8

    .line 631
    if-nez v9, :cond_a

    .line 633
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->readBlock()I

    move-result v9

    .line 634
    if-gtz v9, :cond_9

    .line 635
    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I

    .line 710
    :cond_8
    move/from16 v14, v18

    :goto_3
    move/from16 v0, v16

    if-ge v14, v0, :cond_12

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-byte v23, v22, v14

    .line 710
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 638
    :cond_9
    const/4 v3, 0x0

    .line 641
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->block:[B

    move-object/from16 v22, v0

    aget-byte v22, v22, v3

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    shl-int v22, v22, v4

    add-int v11, v11, v22

    .line 642
    add-int/lit8 v4, v4, 0x8

    .line 643
    add-int/lit8 v3, v3, 0x1

    .line 644
    add-int/lit8 v9, v9, -0x1

    move/from16 v21, v20

    .line 646
    .end local v20    # "top":I
    .local v21, "top":I
    :goto_4
    if-lt v4, v8, :cond_14

    .line 648
    and-int v6, v11, v7

    .line 649
    shr-int/2addr v11, v8

    .line 650
    sub-int/2addr v4, v8

    .line 653
    if-ne v6, v5, :cond_b

    .line 655
    add-int/lit8 v8, v10, 0x1

    .line 656
    const/16 v22, 0x1

    shl-int v22, v22, v8

    add-int/lit8 v7, v22, -0x1

    .line 657
    add-int/lit8 v2, v5, 0x2

    .line 658
    const/16 v17, -0x1

    .line 659
    goto :goto_4

    .line 662
    :cond_b
    if-le v6, v2, :cond_c

    .line 663
    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I

    move/from16 v20, v21

    .line 664
    .end local v21    # "top":I
    .restart local v20    # "top":I
    goto :goto_2

    .line 667
    .end local v20    # "top":I
    .restart local v21    # "top":I
    :cond_c
    if-ne v6, v12, :cond_d

    move/from16 v20, v21

    .line 668
    .end local v21    # "top":I
    .restart local v20    # "top":I
    goto :goto_2

    .line 671
    .end local v20    # "top":I
    .restart local v21    # "top":I
    :cond_d
    const/16 v22, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->pixelStack:[B

    move-object/from16 v22, v0

    add-int/lit8 v20, v21, 0x1

    .end local v21    # "top":I
    .restart local v20    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->suffix:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v6

    aput-byte v23, v22, v21

    .line 673
    move/from16 v17, v6

    .line 674
    move v13, v6

    move/from16 v21, v20

    .line 675
    .end local v20    # "top":I
    .restart local v21    # "top":I
    goto :goto_4

    .line 677
    :cond_e
    move v15, v6

    .line 678
    .local v15, "inCode":I
    if-lt v6, v2, :cond_f

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->pixelStack:[B

    move-object/from16 v22, v0

    add-int/lit8 v20, v21, 0x1

    .end local v21    # "top":I
    .restart local v20    # "top":I
    int-to-byte v0, v13

    move/from16 v23, v0

    aput-byte v23, v22, v21

    .line 680
    move/from16 v6, v17

    move/from16 v21, v20

    .line 682
    .end local v20    # "top":I
    .restart local v21    # "top":I
    :cond_f
    :goto_5
    if-lt v6, v5, :cond_10

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->pixelStack:[B

    move-object/from16 v22, v0

    add-int/lit8 v20, v21, 0x1

    .end local v21    # "top":I
    .restart local v20    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->suffix:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v6

    aput-byte v23, v22, v21

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->prefix:[S

    move-object/from16 v22, v0

    aget-short v6, v22, v6

    move/from16 v21, v20

    .end local v20    # "top":I
    .restart local v21    # "top":I
    goto :goto_5

    .line 686
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->suffix:[B

    move-object/from16 v22, v0

    aget-byte v22, v22, v6

    move/from16 v0, v22

    and-int/lit16 v13, v0, 0xff

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->pixelStack:[B

    move-object/from16 v22, v0

    add-int/lit8 v20, v21, 0x1

    .end local v21    # "top":I
    .restart local v20    # "top":I
    int-to-byte v0, v13

    move/from16 v23, v0

    aput-byte v23, v22, v21

    .line 690
    const/16 v22, 0x1000

    move/from16 v0, v22

    if-ge v2, v0, :cond_11

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->prefix:[S

    move-object/from16 v22, v0

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v23, v0

    aput-short v23, v22, v2

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->suffix:[B

    move-object/from16 v22, v0

    int-to-byte v0, v13

    move/from16 v23, v0

    aput-byte v23, v22, v2

    .line 693
    add-int/lit8 v2, v2, 0x1

    .line 694
    and-int v22, v2, v7

    if-nez v22, :cond_11

    const/16 v22, 0x1000

    move/from16 v0, v22

    if-ge v2, v0, :cond_11

    .line 695
    add-int/lit8 v8, v8, 0x1

    .line 696
    add-int/2addr v7, v2

    .line 699
    :cond_11
    move/from16 v17, v15

    move/from16 v19, v18

    .line 701
    .end local v18    # "pi":I
    .local v19, "pi":I
    :goto_6
    if-lez v20, :cond_13

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

    move-object/from16 v22, v0

    add-int/lit8 v18, v19, 0x1

    .end local v19    # "pi":I
    .restart local v18    # "pi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v20, v20, -0x1

    aget-byte v23, v23, v20

    aput-byte v23, v22, v19

    .line 704
    add-int/lit8 v14, v14, 0x1

    move/from16 v19, v18

    .end local v18    # "pi":I
    .restart local v19    # "pi":I
    goto :goto_6

    .line 713
    .end local v15    # "inCode":I
    .end local v19    # "pi":I
    .restart local v18    # "pi":I
    :cond_12
    return-void

    .end local v18    # "pi":I
    .restart local v15    # "inCode":I
    .restart local v19    # "pi":I
    :cond_13
    move/from16 v18, v19

    .end local v19    # "pi":I
    .restart local v18    # "pi":I
    move/from16 v21, v20

    .end local v20    # "top":I
    .restart local v21    # "top":I
    goto/16 :goto_4

    .end local v15    # "inCode":I
    :cond_14
    move/from16 v20, v21

    .end local v21    # "top":I
    .restart local v20    # "top":I
    goto/16 :goto_2
.end method

.method private getHeaderParser()Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->parser:Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    if-nez v0, :cond_0

    .line 382
    new-instance v0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    invoke-direct {v0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->parser:Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->parser:Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    return-object v0
.end method

.method private getNextBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 780
    iget-boolean v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->isFirstFrameTransparent:Z

    if-eqz v2, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 782
    .local v0, "config":Landroid/graphics/Bitmap$Config;
    :goto_0
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget v3, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    iget v4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledHeight:I

    invoke-interface {v2, v3, v4, v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 783
    .local v1, "result":Landroid/graphics/Bitmap;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 784
    return-object v1

    .line 780
    .end local v0    # "config":Landroid/graphics/Bitmap$Config;
    .end local v1    # "result":Landroid/graphics/Bitmap;
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private readBlock()I
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 749
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->readByte()I

    move-result v0

    .line 750
    .local v0, "blockSize":I
    if-lez v0, :cond_1

    .line 752
    :try_start_0
    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->block:[B

    if-nez v4, :cond_0

    .line 753
    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    const/16 v5, 0xff

    invoke-interface {v4, v5}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    move-result-object v4

    iput-object v4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->block:[B

    .line 755
    :cond_0
    iget v4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->workBufferSize:I

    iget v5, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->workBufferPosition:I

    sub-int v2, v4, v5

    .line 756
    .local v2, "remaining":I
    if-lt v2, v0, :cond_2

    .line 758
    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->workBuffer:[B

    iget v5, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->workBufferPosition:I

    iget-object v6, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->block:[B

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 759
    iget v4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->workBufferPosition:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->workBufferPosition:I

    .line 776
    .end local v2    # "remaining":I
    :cond_1
    :goto_0
    return v0

    .line 760
    .restart local v2    # "remaining":I
    :cond_2
    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    add-int/2addr v4, v2

    if-lt v4, v0, :cond_3

    .line 762
    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->workBuffer:[B

    iget v5, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->workBufferPosition:I

    iget-object v6, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->block:[B

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 763
    iget v4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->workBufferSize:I

    iput v4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->workBufferPosition:I

    .line 764
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->readChunkIfNeeded()V

    .line 765
    sub-int v3, v0, v2

    .line 766
    .local v3, "secondHalfRemaining":I
    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->workBuffer:[B

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->block:[B

    invoke-static {v4, v5, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 767
    iget v4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->workBufferPosition:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->workBufferPosition:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 771
    .end local v2    # "remaining":I
    .end local v3    # "secondHalfRemaining":I
    :catch_0
    move-exception v1

    .line 772
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->TAG:Ljava/lang/String;

    const-string v5, "Error Reading Block"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 773
    iput v8, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I

    goto :goto_0

    .line 769
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "remaining":I
    :cond_3
    const/4 v4, 0x1

    :try_start_1
    iput v4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private readByte()I
    .locals 4

    .prologue
    .line 735
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->readChunkIfNeeded()V

    .line 736
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->workBuffer:[B

    iget v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->workBufferPosition:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->workBufferPosition:I

    aget-byte v1, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v1, v1, 0xff

    .line 739
    :goto_0
    return v1

    .line 737
    :catch_0
    move-exception v0

    .line 738
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I

    .line 739
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readChunkIfNeeded()V
    .locals 4

    .prologue
    const/16 v2, 0x4000

    const/4 v3, 0x0

    .line 719
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->workBufferSize:I

    iget v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->workBufferPosition:I

    if-le v0, v1, :cond_0

    .line 728
    :goto_0
    return-void

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->workBuffer:[B

    if-nez v0, :cond_1

    .line 723
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    invoke-interface {v0, v2}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->workBuffer:[B

    .line 725
    :cond_1
    iput v3, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->workBufferPosition:I

    .line 726
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->workBufferSize:I

    .line 727
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->rawData:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->workBuffer:[B

    iget v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->workBufferSize:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private setPixels(Lcom/bumptech/glide/gifdecoder/GifFrame;Lcom/bumptech/glide/gifdecoder/GifFrame;)Landroid/graphics/Bitmap;
    .locals 34
    .param p1, "currentFrame"    # Lcom/bumptech/glide/gifdecoder/GifFrame;
    .param p2, "previousFrame"    # Lcom/bumptech/glide/gifdecoder/GifFrame;

    .prologue
    .line 404
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainScratch:[I

    .line 407
    .local v4, "dest":[I
    if-nez p2, :cond_0

    .line 408
    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([II)V

    .line 412
    :cond_0
    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    iget v5, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    if-lez v5, :cond_5

    .line 415
    move-object/from16 v0, p2

    iget v5, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 417
    const/4 v13, 0x0

    .line 418
    .local v13, "c":I
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->transparency:Z

    if-nez v5, :cond_2

    .line 419
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v13, v5, Lcom/bumptech/glide/gifdecoder/GifHeader;->bgColor:I

    .line 420
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v5, v5, Lcom/bumptech/glide/gifdecoder/GifHeader;->bgIndex:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->transIndex:I

    if-ne v5, v6, :cond_1

    .line 421
    const/4 v13, 0x0

    .line 430
    :cond_1
    :goto_0
    move-object/from16 v0, p2

    iget v5, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->sampleSize:I

    div-int v16, v5, v6

    .line 431
    .local v16, "downsampledIH":I
    move-object/from16 v0, p2

    iget v5, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->iy:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->sampleSize:I

    div-int v19, v5, v6

    .line 432
    .local v19, "downsampledIY":I
    move-object/from16 v0, p2

    iget v5, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->sampleSize:I

    div-int v17, v5, v6

    .line 433
    .local v17, "downsampledIW":I
    move-object/from16 v0, p2

    iget v5, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->ix:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->sampleSize:I

    div-int v18, v5, v6

    .line 434
    .local v18, "downsampledIX":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    mul-int v5, v5, v19

    add-int v33, v5, v18

    .line 435
    .local v33, "topLeft":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    mul-int v5, v5, v16

    add-int v12, v33, v5

    .line 436
    .local v12, "bottomLeft":I
    move/from16 v26, v33

    .local v26, "left":I
    :goto_1
    move/from16 v0, v26

    if-ge v0, v12, :cond_5

    .line 437
    add-int v31, v26, v17

    .line 438
    .local v31, "right":I
    move/from16 v30, v26

    .local v30, "pointer":I
    :goto_2
    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_3

    .line 439
    aput v13, v4, v30

    .line 438
    add-int/lit8 v30, v30, 0x1

    goto :goto_2

    .line 423
    .end local v12    # "bottomLeft":I
    .end local v16    # "downsampledIH":I
    .end local v17    # "downsampledIW":I
    .end local v18    # "downsampledIX":I
    .end local v19    # "downsampledIY":I
    .end local v26    # "left":I
    .end local v30    # "pointer":I
    .end local v31    # "right":I
    .end local v33    # "topLeft":I
    :cond_2
    move-object/from16 v0, p0

    iget v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    if-nez v5, :cond_1

    .line 427
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->isFirstFrameTransparent:Z

    goto :goto_0

    .line 436
    .restart local v12    # "bottomLeft":I
    .restart local v16    # "downsampledIH":I
    .restart local v17    # "downsampledIW":I
    .restart local v18    # "downsampledIX":I
    .restart local v19    # "downsampledIY":I
    .restart local v26    # "left":I
    .restart local v30    # "pointer":I
    .restart local v31    # "right":I
    .restart local v33    # "topLeft":I
    :cond_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    add-int v26, v26, v5

    goto :goto_1

    .line 442
    .end local v12    # "bottomLeft":I
    .end local v13    # "c":I
    .end local v16    # "downsampledIH":I
    .end local v17    # "downsampledIW":I
    .end local v18    # "downsampledIX":I
    .end local v19    # "downsampledIY":I
    .end local v26    # "left":I
    .end local v30    # "pointer":I
    .end local v31    # "right":I
    .end local v33    # "topLeft":I
    :cond_4
    move-object/from16 v0, p2

    iget v5, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_5

    .line 444
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->previousImage:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledHeight:I

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 450
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->decodeBitmapData(Lcom/bumptech/glide/gifdecoder/GifFrame;)V

    .line 452
    move-object/from16 v0, p1

    iget v5, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->sampleSize:I

    div-int v16, v5, v6

    .line 453
    .restart local v16    # "downsampledIH":I
    move-object/from16 v0, p1

    iget v5, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->iy:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->sampleSize:I

    div-int v19, v5, v6

    .line 454
    .restart local v19    # "downsampledIY":I
    move-object/from16 v0, p1

    iget v5, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->sampleSize:I

    div-int v17, v5, v6

    .line 455
    .restart local v17    # "downsampledIW":I
    move-object/from16 v0, p1

    iget v5, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->ix:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->sampleSize:I

    div-int v18, v5, v6

    .line 457
    .restart local v18    # "downsampledIX":I
    const/16 v29, 0x1

    .line 458
    .local v29, "pass":I
    const/16 v23, 0x8

    .line 459
    .local v23, "inc":I
    const/16 v22, 0x0

    .line 460
    .local v22, "iline":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    if-nez v5, :cond_a

    const/16 v24, 0x1

    .line 461
    .local v24, "isFirstFrame":Z
    :goto_3
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_4
    move/from16 v0, v21

    move/from16 v1, v16

    if-ge v0, v1, :cond_e

    .line 462
    move/from16 v27, v21

    .line 463
    .local v27, "line":I
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->interlace:Z

    if-eqz v5, :cond_7

    .line 464
    move/from16 v0, v22

    move/from16 v1, v16

    if-lt v0, v1, :cond_6

    .line 465
    add-int/lit8 v29, v29, 0x1

    .line 466
    packed-switch v29, :pswitch_data_0

    .line 482
    :cond_6
    :goto_5
    move/from16 v27, v22

    .line 483
    add-int v22, v22, v23

    .line 485
    :cond_7
    add-int v27, v27, v19

    .line 486
    move-object/from16 v0, p0

    iget v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledHeight:I

    move/from16 v0, v27

    if-ge v0, v5, :cond_d

    .line 487
    move-object/from16 v0, p0

    iget v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    mul-int v25, v27, v5

    .line 489
    .local v25, "k":I
    add-int v20, v25, v18

    .line 491
    .local v20, "dx":I
    add-int v15, v20, v17

    .line 492
    .local v15, "dlim":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    add-int v5, v5, v25

    if-ge v5, v15, :cond_8

    .line 494
    move-object/from16 v0, p0

    iget v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    add-int v15, v25, v5

    .line 497
    :cond_8
    move-object/from16 v0, p0

    iget v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->sampleSize:I

    mul-int v5, v5, v21

    move-object/from16 v0, p1

    iget v6, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    mul-int v32, v5, v6

    .line 498
    .local v32, "sx":I
    sub-int v5, v15, v20

    move-object/from16 v0, p0

    iget v6, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->sampleSize:I

    mul-int/2addr v5, v6

    add-int v28, v32, v5

    .line 499
    .local v28, "maxPositionInSource":I
    :goto_6
    move/from16 v0, v20

    if-ge v0, v15, :cond_d

    .line 502
    move-object/from16 v0, p0

    iget v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->sampleSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    .line 503
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

    aget-byte v5, v5, v32

    and-int/lit16 v14, v5, 0xff

    .line 504
    .local v14, "currentColorIndex":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->act:[I

    aget v11, v5, v14

    .line 510
    .end local v14    # "currentColorIndex":I
    .local v11, "averageColor":I
    :goto_7
    if-eqz v11, :cond_c

    .line 511
    aput v11, v4, v20

    .line 515
    :cond_9
    :goto_8
    move-object/from16 v0, p0

    iget v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->sampleSize:I

    add-int v32, v32, v5

    .line 516
    add-int/lit8 v20, v20, 0x1

    .line 517
    goto :goto_6

    .line 460
    .end local v11    # "averageColor":I
    .end local v15    # "dlim":I
    .end local v20    # "dx":I
    .end local v21    # "i":I
    .end local v24    # "isFirstFrame":Z
    .end local v25    # "k":I
    .end local v27    # "line":I
    .end local v28    # "maxPositionInSource":I
    .end local v32    # "sx":I
    :cond_a
    const/16 v24, 0x0

    goto :goto_3

    .line 468
    .restart local v21    # "i":I
    .restart local v24    # "isFirstFrame":Z
    .restart local v27    # "line":I
    :pswitch_0
    const/16 v22, 0x4

    .line 469
    goto :goto_5

    .line 471
    :pswitch_1
    const/16 v22, 0x2

    .line 472
    const/16 v23, 0x4

    .line 473
    goto :goto_5

    .line 475
    :pswitch_2
    const/16 v22, 0x1

    .line 476
    const/16 v23, 0x2

    .line 477
    goto :goto_5

    .line 508
    .restart local v15    # "dlim":I
    .restart local v20    # "dx":I
    .restart local v25    # "k":I
    .restart local v28    # "maxPositionInSource":I
    .restart local v32    # "sx":I
    :cond_b
    move-object/from16 v0, p1

    iget v5, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v28

    invoke-direct {v0, v1, v2, v5}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->averageColorsNear(III)I

    move-result v11

    .restart local v11    # "averageColor":I
    goto :goto_7

    .line 512
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->isFirstFrameTransparent:Z

    if-nez v5, :cond_9

    if-eqz v24, :cond_9

    .line 513
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->isFirstFrameTransparent:Z

    goto :goto_8

    .line 461
    .end local v11    # "averageColor":I
    .end local v15    # "dlim":I
    .end local v20    # "dx":I
    .end local v25    # "k":I
    .end local v28    # "maxPositionInSource":I
    .end local v32    # "sx":I
    :cond_d
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_4

    .line 522
    .end local v27    # "line":I
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->savePrevious:Z

    if-eqz v5, :cond_11

    move-object/from16 v0, p1

    iget v5, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    if-eqz v5, :cond_f

    move-object/from16 v0, p1

    iget v5, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_11

    .line 524
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-nez v5, :cond_10

    .line 525
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->getNextBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 527
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->previousImage:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledHeight:I

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 532
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->getNextBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 533
    .local v3, "result":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledHeight:I

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 534
    return-object v3

    .line 466
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public advance()V
    .locals 2

    .prologue
    .line 165
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    .line 166
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 315
    iput-object v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 316
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

    invoke-interface {v0, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->release([B)V

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainScratch:[I

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainScratch:[I

    invoke-interface {v0, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->release([I)V

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->previousImage:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->release(Landroid/graphics/Bitmap;)V

    .line 325
    :cond_2
    iput-object v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 326
    iput-object v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->isFirstFrameTransparent:Z

    .line 328
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->block:[B

    if-eqz v0, :cond_3

    .line 329
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->block:[B

    invoke-interface {v0, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->release([B)V

    .line 331
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->workBuffer:[B

    if-eqz v0, :cond_4

    .line 332
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->workBuffer:[B

    invoke-interface {v0, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->release([B)V

    .line 334
    :cond_4
    return-void
.end method

.method public getByteSize()I
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainScratch:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentFrameIndex()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    return v0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->rawData:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getDelay(I)I
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 170
    const/4 v0, -0x1

    .line 171
    .local v0, "delay":I
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    if-ge p1, v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/gifdecoder/GifFrame;

    iget v0, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->delay:I

    .line 174
    :cond_0
    return v0
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    return v0
.end method

.method public getLoopCount()I
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 204
    const/4 v0, 0x1

    .line 206
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    goto :goto_0
.end method

.method public getNetscapeLoopCount()I
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    return v0
.end method

.method public getNextDelay()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    if-gez v0, :cond_1

    .line 180
    :cond_0
    const/4 v0, 0x0

    .line 183
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->getDelay(I)I

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized getNextFrame()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 232
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    if-lez v4, :cond_0

    iget v4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    if-gez v4, :cond_2

    .line 233
    :cond_0
    sget-object v4, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->TAG:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 234
    sget-object v4, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to decode frame, frameCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v6, v6, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", framePointer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_1
    const/4 v4, 0x1

    iput v4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I

    .line 241
    :cond_2
    iget v4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I

    if-eq v4, v7, :cond_3

    iget v4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 242
    :cond_3
    sget-object v4, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->TAG:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 243
    sget-object v4, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to decode frame, status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :cond_4
    :goto_0
    monitor-exit p0

    return-object v3

    .line 247
    :cond_5
    const/4 v4, 0x0

    :try_start_1
    iput v4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I

    .line 249
    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    iget v5, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 250
    .local v0, "currentFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    const/4 v1, 0x0

    .line 251
    .local v1, "previousFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    iget v4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    add-int/lit8 v2, v4, -0x1

    .line 252
    .local v2, "previousIndex":I
    if-ltz v2, :cond_6

    .line 253
    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "previousFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    check-cast v1, Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 257
    .restart local v1    # "previousFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    :cond_6
    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    if-eqz v4, :cond_8

    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    :goto_1
    iput-object v4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->act:[I

    .line 258
    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->act:[I

    if-nez v4, :cond_9

    .line 259
    sget-object v4, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->TAG:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 260
    sget-object v4, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No valid color table found for frame #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_7
    const/4 v4, 0x1

    iput v4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 232
    .end local v0    # "currentFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    .end local v1    # "previousFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    .end local v2    # "previousIndex":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 257
    .restart local v0    # "currentFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    .restart local v1    # "previousFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    .restart local v2    # "previousIndex":I
    :cond_8
    :try_start_2
    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->gct:[I

    goto :goto_1

    .line 268
    :cond_9
    iget-boolean v3, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->transparency:Z

    if-eqz v3, :cond_a

    .line 270
    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->act:[I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->pct:[I

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->act:[I

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->pct:[I

    iput-object v3, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->act:[I

    .line 274
    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->act:[I

    iget v4, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->transIndex:I

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 278
    :cond_a
    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->setPixels(Lcom/bumptech/glide/gifdecoder/GifFrame;Lcom/bumptech/glide/gifdecoder/GifFrame;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I

    return v0
.end method

.method public getTotalIterationCount()I
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 217
    const/4 v0, 0x1

    .line 222
    :goto_0
    return v0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    if-nez v0, :cond_1

    .line 220
    const/4 v0, 0x0

    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    return v0
.end method

.method public read(Ljava/io/InputStream;I)I
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "contentLength"    # I

    .prologue
    const/16 v1, 0x4000

    .line 283
    if-eqz p1, :cond_3

    .line 285
    if-lez p2, :cond_0

    add-int/lit16 v1, p2, 0x1000

    .line 286
    .local v1, "capacity":I
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 288
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x4000

    new-array v2, v5, [B

    .line 289
    .local v2, "data":[B
    :goto_0
    const/4 v5, 0x0

    array-length v6, v2

    invoke-virtual {p1, v2, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .local v4, "nRead":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 290
    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 295
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "data":[B
    .end local v4    # "nRead":I
    :catch_0
    move-exception v3

    .line 296
    .local v3, "e":Ljava/io/IOException;
    sget-object v5, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->TAG:Ljava/lang/String;

    const-string v6, "Error reading data from stream"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    .end local v1    # "capacity":I
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    if-eqz p1, :cond_1

    .line 304
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 310
    :cond_1
    :goto_2
    iget v5, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I

    return v5

    .line 292
    .restart local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "capacity":I
    .restart local v2    # "data":[B
    .restart local v4    # "nRead":I
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 294
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->read([B)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 299
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "capacity":I
    .end local v2    # "data":[B
    .end local v4    # "nRead":I
    :cond_3
    const/4 v5, 0x2

    iput v5, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I

    goto :goto_1

    .line 306
    :catch_1
    move-exception v3

    .line 307
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->TAG:Ljava/lang/String;

    const-string v6, "Error closing stream"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public declared-synchronized read([B)I
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 390
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->getHeaderParser()Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->setData([B)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->parseHeader()Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 391
    if-eqz p1, :cond_0

    .line 392
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->setData(Lcom/bumptech/glide/gifdecoder/GifHeader;[B)V

    .line 395
    :cond_0
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetFrameIndex()V
    .locals 1

    .prologue
    .line 198
    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    .line 199
    return-void
.end method

.method public declared-synchronized setData(Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "header"    # Lcom/bumptech/glide/gifdecoder/GifHeader;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 343
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->setData(Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    monitor-exit p0

    return-void

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setData(Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;I)V
    .locals 4
    .param p1, "header"    # Lcom/bumptech/glide/gifdecoder/GifHeader;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "sampleSize"    # I

    .prologue
    .line 348
    monitor-enter p0

    if-gtz p3, :cond_0

    .line 349
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sample size must be >=0, not: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 352
    :cond_0
    :try_start_1
    invoke-static {p3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p3

    .line 353
    const/4 v1, 0x0

    iput v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I

    .line 354
    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 355
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->isFirstFrameTransparent:Z

    .line 356
    const/4 v1, -0x1

    iput v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    .line 358
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 359
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->rawData:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 360
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->rawData:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 363
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->savePrevious:Z

    .line 364
    iget-object v1, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 365
    .local v0, "frame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    iget v2, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 366
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->savePrevious:Z

    .line 371
    .end local v0    # "frame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    :cond_2
    iput p3, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->sampleSize:I

    .line 372
    iget v1, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    div-int/2addr v1, p3

    iput v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    .line 373
    iget v1, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    div-int/2addr v1, p3

    iput v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledHeight:I

    .line 376
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget v2, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget v3, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    mul-int/2addr v2, v3

    invoke-interface {v1, v2}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

    .line 377
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    iget v3, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledHeight:I

    mul-int/2addr v2, v3

    invoke-interface {v1, v2}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->obtainIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainScratch:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setData(Lcom/bumptech/glide/gifdecoder/GifHeader;[B)V
    .locals 1
    .param p1, "header"    # Lcom/bumptech/glide/gifdecoder/GifHeader;
    .param p2, "data"    # [B

    .prologue
    .line 338
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->setData(Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    monitor-exit p0

    return-void

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
