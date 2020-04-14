.class public Lcom/xiaomi/hy/zxing/QRGenerator;
.super Ljava/lang/Object;
.source "QRGenerator.java"


# static fields
.field private static final BLACK:I = -0x1000000

.field private static final TAG:Ljava/lang/String; = "QRGenerator"

.field private static final WHITE:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create2DCode(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 20
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "dimension"    # I

    .prologue
    .line 75
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 76
    .local v6, "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/EncodeHintType;Ljava/lang/Integer;>;"
    sget-object v2, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v1, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v1}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    .line 84
    .local v1, "writer":Lcom/google/zxing/MultiFormatWriter;
    :try_start_0
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 91
    .local v17, "result":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v10

    .line 92
    .local v10, "width":I
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v14

    .line 93
    .local v14, "height":I
    mul-int v2, v10, v14

    new-array v8, v2, [I

    .line 94
    .local v8, "pixels":[I
    const/16 v19, 0x0

    .local v19, "y":I
    :goto_0
    move/from16 v0, v19

    if-ge v0, v14, :cond_2

    .line 95
    mul-int v16, v19, v10

    .line 96
    .local v16, "offset":I
    const/16 v18, 0x0

    .local v18, "x":I
    :goto_1
    move/from16 v0, v18

    if-ge v0, v10, :cond_1

    .line 97
    add-int v3, v16, v18

    invoke-virtual/range {v17 .. v19}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, -0x1000000

    :goto_2
    aput v2, v8, v3

    .line 96
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 85
    .end local v8    # "pixels":[I
    .end local v10    # "width":I
    .end local v14    # "height":I
    .end local v16    # "offset":I
    .end local v17    # "result":Lcom/google/zxing/common/BitMatrix;
    .end local v18    # "x":I
    .end local v19    # "y":I
    :catch_0
    move-exception v15

    .line 86
    .local v15, "e":Ljava/lang/Exception;
    const/4 v7, 0x0

    .line 104
    .end local v15    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v7

    .line 97
    .restart local v8    # "pixels":[I
    .restart local v10    # "width":I
    .restart local v14    # "height":I
    .restart local v16    # "offset":I
    .restart local v17    # "result":Lcom/google/zxing/common/BitMatrix;
    .restart local v18    # "x":I
    .restart local v19    # "y":I
    :cond_0
    const/4 v2, -0x1

    goto :goto_2

    .line 94
    :cond_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 101
    .end local v16    # "offset":I
    .end local v18    # "x":I
    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v14, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 102
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v10

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_3
.end method

.method public static generate(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 20
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "dimension"    # I
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 36
    new-instance v17, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct/range {v17 .. v17}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    .line 39
    .local v17, "writer":Lcom/google/zxing/MultiFormatWriter;
    :try_start_0
    sget-object v6, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p1

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 47
    .local v14, "result":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v14}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v7

    .line 48
    .local v7, "width":I
    invoke-virtual {v14}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v11

    .line 49
    .local v11, "height":I
    mul-int v6, v7, v11

    new-array v5, v6, [I

    .line 50
    .local v5, "pixels":[I
    const/16 v19, 0x0

    .local v19, "y":I
    :goto_0
    move/from16 v0, v19

    if-ge v0, v11, :cond_2

    .line 51
    mul-int v13, v19, v7

    .line 52
    .local v13, "offset":I
    const/16 v18, 0x0

    .local v18, "x":I
    :goto_1
    move/from16 v0, v18

    if-ge v0, v7, :cond_1

    .line 53
    add-int v8, v13, v18

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_0

    const/high16 v6, -0x1000000

    :goto_2
    aput v6, v5, v8

    .line 52
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 40
    .end local v5    # "pixels":[I
    .end local v7    # "width":I
    .end local v11    # "height":I
    .end local v13    # "offset":I
    .end local v14    # "result":Lcom/google/zxing/common/BitMatrix;
    .end local v18    # "x":I
    .end local v19    # "y":I
    :catch_0
    move-exception v12

    .line 41
    .local v12, "e":Ljava/lang/Exception;
    const/4 v15, 0x0

    .line 71
    .end local v12    # "e":Ljava/lang/Exception;
    :goto_3
    return v15

    .line 53
    .restart local v5    # "pixels":[I
    .restart local v7    # "width":I
    .restart local v11    # "height":I
    .restart local v13    # "offset":I
    .restart local v14    # "result":Lcom/google/zxing/common/BitMatrix;
    .restart local v18    # "x":I
    .restart local v19    # "y":I
    :cond_0
    const/4 v6, -0x1

    goto :goto_2

    .line 50
    :cond_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 57
    .end local v13    # "offset":I
    .end local v18    # "x":I
    :cond_2
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v11, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 58
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v10, v7

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 63
    const/16 v16, 0x0

    .line 65
    .local v16, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v16, Ljava/io/FileOutputStream;

    .end local v16    # "stream":Ljava/io/FileOutputStream;
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    .restart local v16    # "stream":Ljava/io/FileOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    move-object/from16 v0, v16

    invoke-virtual {v4, v6, v8, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v15

    .line 71
    .local v15, "ret":Z
    goto :goto_3

    .line 66
    .end local v15    # "ret":Z
    .end local v16    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v12

    .line 67
    .restart local v12    # "e":Ljava/lang/Exception;
    const/4 v15, 0x0

    goto :goto_3
.end method
