.class public Lcom/aonesoft/lib/GenerateQRCode;
.super Ljava/lang/Object;
.source "GenerateQRCode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static EmQRCode(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "srcImagePath"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "destImagePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 32
    const-string v10, "Aonesdk"

    const-string v11, "CenerateQRCode.java begin to emQRCode ... "

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const-string v10, "Aonesdk"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "path = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string v10, "Aonesdk"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "content = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const-string v10, "Aonesdk"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "x = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", y = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", w = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", h = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 39
    const-string v10, "Aonesdk"

    const-string v11, "src image path is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const-string v10, " "

    .line 79
    :goto_0
    return-object v10

    .line 43
    :cond_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v8, "srcImage":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 46
    const-string v10, "Aonesdk"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "src image path not exist = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string v10, " "

    goto :goto_0

    .line 50
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "dir":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p0}, Lcom/aonesoft/lib/GenerateQRCode;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_qrencode.png"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    .line 56
    const-string v10, "Aonesdk"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "dest image path = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    move-object/from16 v0, p6

    invoke-static {p0, v0}, Lcom/aonesoft/lib/GenerateQRCode;->copyFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 58
    .local v7, "ret":I
    if-eqz v7, :cond_2

    .line 60
    const-string v10, "Aonesdk"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "copy src image fail, dest image path = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v10, " "

    goto/16 :goto_0

    .line 64
    :cond_2
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {p1, v0, v1}, Lcom/aonesoft/lib/GenerateQRCode;->createQRCode(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 65
    .local v6, "qr":Landroid/graphics/Bitmap;
    if-nez v6, :cond_3

    .line 67
    const-string v10, "Aonesdk"

    const-string v11, "create QRCode fail"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v10, " "

    goto/16 :goto_0

    .line 71
    :cond_3
    invoke-static/range {p6 .. p6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 72
    .local v2, "back":Landroid/graphics/Bitmap;
    move/from16 v0, p3

    invoke-static {v2, v6, p2, v0}, Lcom/aonesoft/lib/GenerateQRCode;->generateImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 74
    .local v4, "finalImage":Landroid/graphics/Bitmap;
    const-string v10, "Aonesdk"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "get final image:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v5, Ljava/io/FileOutputStream;

    move-object/from16 v0, p6

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 77
    .local v5, "out":Ljava/io/FileOutputStream;
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v4, v10, v11, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v9

    .line 79
    .local v9, "success":Z
    if-eqz v9, :cond_4

    move-object/from16 v10, p6

    goto/16 :goto_0

    :cond_4
    const-string v10, " "

    goto/16 :goto_0
.end method

.method private static bitmapScale(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scale"    # F

    .prologue
    const/4 v1, 0x0

    .line 139
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 140
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 141
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 142
    .local v7, "resizeBmp":Landroid/graphics/Bitmap;
    return-object v7
.end method

.method private static copyFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p0, "oldPath"    # Ljava/lang/String;
    .param p1, "newPath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 147
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    .local v5, "oldfile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 150
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 151
    .local v4, "inStream":Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 152
    .local v3, "fs":Ljava/io/FileOutputStream;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 153
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 154
    .local v1, "byteread":I
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ne v1, v7, :cond_0

    .line 158
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 159
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 165
    .end local v0    # "buffer":[B
    .end local v1    # "byteread":I
    .end local v3    # "fs":Ljava/io/FileOutputStream;
    .end local v4    # "inStream":Ljava/io/InputStream;
    .end local v5    # "oldfile":Ljava/io/File;
    :goto_1
    return v6

    .line 156
    .restart local v0    # "buffer":[B
    .restart local v1    # "byteread":I
    .restart local v3    # "fs":Ljava/io/FileOutputStream;
    .restart local v4    # "inStream":Ljava/io/InputStream;
    .restart local v5    # "oldfile":Ljava/io/File;
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {v3, v0, v8, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    .end local v0    # "buffer":[B
    .end local v1    # "byteread":I
    .end local v3    # "fs":Ljava/io/FileOutputStream;
    .end local v4    # "inStream":Ljava/io/InputStream;
    .end local v5    # "oldfile":Ljava/io/File;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    move v6, v7

    .line 165
    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v5    # "oldfile":Ljava/io/File;
    :cond_1
    move v6, v7

    .line 162
    goto :goto_1
.end method

.method private static createQRCode(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 21
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "widthPix"    # I
    .param p2, "heightPix"    # I

    .prologue
    .line 86
    if-eqz p0, :cond_0

    :try_start_0
    const-string v3, ""

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    :cond_0
    const/4 v9, 0x0

    .line 122
    :goto_0
    return-object v9

    .line 91
    :cond_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 92
    .local v8, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    sget-object v3, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v4, "utf-8"

    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v3, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v4, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->M:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v3, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v3, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v3}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v4, p0

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v17

    .line 100
    .local v17, "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    mul-int v3, p1, p2

    new-array v10, v3, [I

    .line 103
    .local v10, "pixels":[I
    const/16 v20, 0x0

    .local v20, "y":I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, p2

    if-lt v0, v1, :cond_2

    .line 114
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 115
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v12, p1

    move/from16 v15, p1

    move/from16 v16, p2

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    .end local v8    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "pixels":[I
    .end local v17    # "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    .end local v20    # "y":I
    :catch_0
    move-exception v18

    .line 119
    .local v18, "e":Lcom/google/zxing/WriterException;
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/WriterException;->printStackTrace()V

    .line 122
    const/4 v9, 0x0

    goto :goto_0

    .line 104
    .end local v18    # "e":Lcom/google/zxing/WriterException;
    .restart local v8    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    .restart local v10    # "pixels":[I
    .restart local v17    # "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    .restart local v20    # "y":I
    :cond_2
    const/16 v19, 0x0

    .local v19, "x":I
    :goto_2
    move/from16 v0, v19

    move/from16 v1, p1

    if-lt v0, v1, :cond_3

    .line 103
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 105
    :cond_3
    :try_start_1
    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 106
    mul-int v3, v20, p1

    add-int v3, v3, v19

    const/high16 v4, -0x1000000

    aput v4, v10, v3

    .line 104
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 108
    :cond_4
    mul-int v3, v20, p1

    add-int v3, v3, v19

    const/4 v4, -0x1

    aput v4, v10, v3
    :try_end_1
    .catch Lcom/google/zxing/WriterException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private static generateImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "back"    # Landroid/graphics/Bitmap;
    .param p1, "front"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 128
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 129
    .local v1, "newbmp":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 130
    .local v0, "cv":Landroid/graphics/Canvas;
    invoke-virtual {v0, p0, v5, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 131
    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v0, p1, v2, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 132
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 133
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 134
    return-object v1
.end method

.method private static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 171
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 172
    .local v1, "start":I
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 173
    .local v0, "end":I
    if-eq v1, v3, :cond_0

    if-eq v0, v3, :cond_0

    .line 175
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 178
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getFileRoot(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 186
    .local v0, "external":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 191
    .end local v0    # "external":Ljava/io/File;
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
