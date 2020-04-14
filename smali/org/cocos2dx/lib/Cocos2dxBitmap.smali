.class public Lorg/cocos2dx/lib/Cocos2dxBitmap;
.super Ljava/lang/Object;
.source "Cocos2dxBitmap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;
    }
.end annotation


# static fields
.field private static final HORIZONTALALIGN_CENTER:I = 0x3

.field private static final HORIZONTALALIGN_LEFT:I = 0x1

.field private static final HORIZONTALALIGN_RIGHT:I = 0x2

.field private static final VERTICALALIGN_BOTTOM:I = 0x2

.field private static final VERTICALALIGN_CENTER:I = 0x3

.field private static final VERTICALALIGN_TOP:I = 0x1

.field private static _context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeTextProperty(Ljava/lang/String;IILandroid/graphics/Paint;)Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;
    .locals 12
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v7, 0x0

    .line 242
    invoke-virtual {p3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 243
    .local v0, "fm":Landroid/graphics/Paint$FontMetricsInt;
    iget v6, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v8, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v6, v8

    int-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v1, v8

    .line 244
    .local v1, "h":I
    const/4 v4, 0x0

    .line 246
    .local v4, "maxContentWidth":I
    invoke-static {p0, p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->splitString(Ljava/lang/String;IILandroid/graphics/Paint;)[Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, "lines":[Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 250
    move v4, p1

    .line 263
    :cond_0
    new-instance v6, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;

    invoke-direct {v6, v4, v1, v3}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;-><init>(II[Ljava/lang/String;)V

    return-object v6

    .line 253
    :cond_1
    const/4 v5, 0x0

    .line 254
    .local v5, "temp":I
    array-length v8, v3

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v2, v3, v6

    .line 256
    .local v2, "line":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    .line 255
    invoke-virtual {p3, v2, v7, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v9

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v5, v10

    .line 257
    if-le v5, v4, :cond_2

    .line 258
    move v4, v5

    .line 254
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private static computeX(Ljava/lang/String;II)I
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "horizontalAlignment"    # I

    .prologue
    .line 268
    const/4 v0, 0x0

    .line 270
    .local v0, "ret":I
    packed-switch p2, :pswitch_data_0

    .line 282
    :goto_0
    return v0

    .line 272
    :pswitch_0
    div-int/lit8 v0, p1, 0x2

    .line 273
    goto :goto_0

    .line 275
    :pswitch_1
    move v0, p1

    .line 276
    goto :goto_0

    .line 270
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static computeY(Landroid/graphics/Paint$FontMetricsInt;III)I
    .locals 3
    .param p0, "fontMetricsInt"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p1, "constrainHeight"    # I
    .param p2, "totalHeight"    # I
    .param p3, "verticalAlignment"    # I

    .prologue
    .line 288
    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v0, v1

    .line 290
    .local v0, "y":I
    if-le p1, p2, :cond_0

    .line 291
    packed-switch p3, :pswitch_data_0

    .line 307
    :cond_0
    :goto_0
    return v0

    .line 293
    :pswitch_0
    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v0, v1

    .line 294
    goto :goto_0

    .line 296
    :pswitch_1
    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v1, v1

    sub-int v2, p1, p2

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 298
    goto :goto_0

    .line 300
    :pswitch_2
    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v1, v1

    sub-int v2, p1, p2

    add-int v0, v1, v2

    .line 301
    goto :goto_0

    .line 291
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static createTextBitmap(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 19
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "fontSize"    # I
    .param p3, "alignment"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 97
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-static/range {v0 .. v18}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->createTextBitmapShadowStroke(Ljava/lang/String;Ljava/lang/String;IFFFIIIZFFFFZFFFF)Z

    .line 102
    return-void
.end method

.method public static createTextBitmapShadowStroke(Ljava/lang/String;Ljava/lang/String;IFFFIIIZFFFFZFFFF)Z
    .locals 32
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "fontSize"    # I
    .param p3, "fontTintR"    # F
    .param p4, "fontTintG"    # F
    .param p5, "fontTintB"    # F
    .param p6, "alignment"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "shadow"    # Z
    .param p10, "shadowDX"    # F
    .param p11, "shadowDY"    # F
    .param p12, "shadowBlur"    # F
    .param p13, "shadowOpacity"    # F
    .param p14, "stroke"    # Z
    .param p15, "strokeR"    # F
    .param p16, "strokeG"    # F
    .param p17, "strokeB"    # F
    .param p18, "strokeSize"    # F

    .prologue
    .line 111
    and-int/lit8 v13, p6, 0xf

    .line 112
    .local v13, "horizontalAlignment":I
    shr-int/lit8 v25, p6, 0x4

    and-int/lit8 v22, v25, 0xf

    .line 114
    .local v22, "verticalAlignment":I
    invoke-static/range {p0 .. p0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->refactorString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 115
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v13}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->newPaint(Ljava/lang/String;II)Landroid/graphics/Paint;

    move-result-object v17

    .line 119
    .local v17, "paint":Landroid/graphics/Paint;
    if-eqz p7, :cond_0

    .line 121
    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v25

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v11, v0

    .line 122
    .local v11, "firstWordWidth":I
    move/from16 v0, p7

    if-le v11, v0, :cond_0

    .line 124
    const-string v25, "createTextBitmapShadowStroke warning:"

    const-string v26, "the input width is less than the width of the pString\'s first word\n"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/16 v25, 0x0

    .line 197
    .end local v11    # "firstWordWidth":I
    :goto_0
    return v25

    .line 131
    :cond_0
    const/16 v25, 0xff

    const-wide v26, 0x406fe00000000000L    # 255.0

    move/from16 v0, p3

    float-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    const-wide v28, 0x406fe00000000000L    # 255.0

    move/from16 v0, p4

    float-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v27, v0

    const-wide v28, 0x406fe00000000000L    # 255.0

    move/from16 v0, p5

    float-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v17

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 133
    move-object/from16 v0, p0

    move/from16 v1, p7

    move/from16 v2, p8

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->computeTextProperty(Ljava/lang/String;IILandroid/graphics/Paint;)Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;

    move-result-object v21

    .line 134
    .local v21, "textProperty":Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;
    if-nez p8, :cond_2

    invoke-static/range {v21 .. v21}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$000(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I

    move-result v9

    .line 137
    .local v9, "bitmapTotalHeight":I
    :goto_1
    const/4 v7, 0x0

    .line 138
    .local v7, "bitmapPaddingX":F
    const/4 v8, 0x0

    .line 139
    .local v8, "bitmapPaddingY":F
    const/16 v19, 0x0

    .line 140
    .local v19, "renderTextDeltaX":F
    const/16 v20, 0x0

    .line 142
    .local v20, "renderTextDeltaY":F
    invoke-static/range {v21 .. v21}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$100(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I

    move-result v25

    if-eqz v25, :cond_1

    if-nez v9, :cond_3

    .line 144
    :cond_1
    const-string v25, "createTextBitmapShadowStroke warning:"

    const-string v26, "textProperty MaxWidth is 0 or bitMapTotalHeight is 0\n"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/16 v25, 0x0

    goto :goto_0

    .end local v7    # "bitmapPaddingX":F
    .end local v8    # "bitmapPaddingY":F
    .end local v9    # "bitmapTotalHeight":I
    .end local v19    # "renderTextDeltaX":F
    .end local v20    # "renderTextDeltaY":F
    :cond_2
    move/from16 v9, p8

    .line 134
    goto :goto_1

    .line 149
    .restart local v7    # "bitmapPaddingX":F
    .restart local v8    # "bitmapPaddingY":F
    .restart local v9    # "bitmapTotalHeight":I
    .restart local v19    # "renderTextDeltaX":F
    .restart local v20    # "renderTextDeltaY":F
    :cond_3
    invoke-static/range {v21 .. v21}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$100(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I

    move-result v25

    float-to-int v0, v7

    move/from16 v26, v0

    add-int v25, v25, v26

    float-to-int v0, v8

    move/from16 v26, v0

    add-int v26, v26, v9

    sget-object v27, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v25 .. v27}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 152
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 155
    .local v10, "canvas":Landroid/graphics/Canvas;
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v12

    .line 158
    .local v12, "fontMetricsInt":Landroid/graphics/Paint$FontMetricsInt;
    if-eqz p14, :cond_4

    .line 160
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v13}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->newPaint(Ljava/lang/String;II)Landroid/graphics/Paint;

    move-result-object v18

    .line 161
    .local v18, "paintStroke":Landroid/graphics/Paint;
    sget-object v25, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 162
    move-object/from16 v0, v18

    move/from16 v1, p18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 163
    const/16 v25, 0xff

    const/high16 v26, 0x437f0000    # 255.0f

    mul-float v26, v26, p15

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x437f0000    # 255.0f

    mul-float v27, v27, p16

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x437f0000    # 255.0f

    mul-float v28, v28, p17

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v18

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 165
    const/16 v23, 0x0

    .line 166
    .local v23, "x":I
    invoke-static/range {v21 .. v21}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$000(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I

    move-result v25

    move/from16 v0, p8

    move/from16 v1, v25

    move/from16 v2, v22

    invoke-static {v12, v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->computeY(Landroid/graphics/Paint$FontMetricsInt;III)I

    move-result v24

    .line 167
    .local v24, "y":I
    invoke-static/range {v21 .. v21}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$200(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)[Ljava/lang/String;

    move-result-object v16

    .line 169
    .local v16, "lines2":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v26, v0

    const/16 v25, 0x0

    :goto_2
    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_5

    aget-object v14, v16, v25

    .line 171
    .local v14, "line":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$100(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I

    move-result v27

    move/from16 v0, v27

    invoke-static {v14, v0, v13}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->computeX(Ljava/lang/String;II)I

    move-result v23

    .line 172
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v27, v27, v19

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v28, v0

    add-float v28, v28, v20

    move/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v18

    invoke-virtual {v10, v14, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 173
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v27, v27, v19

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v28, v0

    add-float v28, v28, v20

    move/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v17

    invoke-virtual {v10, v14, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 174
    invoke-static/range {v21 .. v21}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$300(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I

    move-result v27

    add-int v24, v24, v27

    .line 169
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .line 181
    .end local v14    # "line":Ljava/lang/String;
    .end local v16    # "lines2":[Ljava/lang/String;
    .end local v18    # "paintStroke":Landroid/graphics/Paint;
    .end local v23    # "x":I
    .end local v24    # "y":I
    :cond_4
    const/16 v23, 0x0

    .line 182
    .restart local v23    # "x":I
    invoke-static/range {v21 .. v21}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$000(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I

    move-result v25

    move/from16 v0, p8

    move/from16 v1, v25

    move/from16 v2, v22

    invoke-static {v12, v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->computeY(Landroid/graphics/Paint$FontMetricsInt;III)I

    move-result v24

    .line 184
    .restart local v24    # "y":I
    invoke-static/range {v21 .. v21}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$200(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)[Ljava/lang/String;

    move-result-object v15

    .line 186
    .local v15, "lines":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v26, v0

    const/16 v25, 0x0

    :goto_3
    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_5

    aget-object v14, v15, v25

    .line 188
    .restart local v14    # "line":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$100(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I

    move-result v27

    move/from16 v0, v27

    invoke-static {v14, v0, v13}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->computeX(Ljava/lang/String;II)I

    move-result v23

    .line 189
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v27, v27, v19

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v28, v0

    add-float v28, v28, v20

    move/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v17

    invoke-virtual {v10, v14, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 190
    invoke-static/range {v21 .. v21}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$300(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I

    move-result v27

    add-int v24, v24, v27

    .line 186
    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    .line 195
    .end local v14    # "line":Ljava/lang/String;
    .end local v15    # "lines":[Ljava/lang/String;
    :cond_5
    invoke-static {v6}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->initNativeObject(Landroid/graphics/Bitmap;)V

    .line 197
    const/16 v25, 0x1

    goto/16 :goto_0
.end method

.method private static divideStringWithMaxWidth(Ljava/lang/String;ILandroid/graphics/Paint;)Ljava/util/LinkedList;
    .locals 8
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/graphics/Paint;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 371
    .local v0, "charLength":I
    const/4 v3, 0x0

    .line 372
    .local v3, "start":I
    const/4 v5, 0x0

    .line 373
    .local v5, "tempWidth":I
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 376
    .local v4, "strList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_4

    .line 377
    invoke-virtual {p2, p0, v3, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 379
    if-lt v5, p1, :cond_3

    .line 380
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    .line 381
    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 383
    .local v2, "lastIndexOfSpace":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    if-le v2, v3, :cond_0

    .line 385
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 386
    add-int/lit8 v1, v2, 0x1

    .line 399
    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_2

    .line 400
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 389
    :cond_0
    if-le v5, p1, :cond_1

    .line 390
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 392
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 394
    :cond_1
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 403
    :cond_2
    move v3, v1

    .line 376
    .end local v2    # "lastIndexOfSpace":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 408
    :cond_4
    if-ge v3, v0, :cond_5

    .line 409
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_5
    return-object v4
.end method

.method private static getFontSizeAccordingHeight(I)I
    .locals 8
    .param p0, "height"    # I

    .prologue
    .line 470
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 471
    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 473
    .local v0, "bounds":Landroid/graphics/Rect;
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 474
    const/4 v2, 0x1

    .line 475
    .local v2, "incr_text_size":I
    const/4 v1, 0x0

    .line 477
    .local v1, "found_desired_size":Z
    :goto_0
    if-nez v1, :cond_1

    .line 479
    int-to-float v5, v2

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 480
    const-string v4, "SghMNy"

    .line 481
    .local v4, "text":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 483
    add-int/lit8 v2, v2, 0x1

    .line 485
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int v5, p0, v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_0

    .line 486
    const/4 v1, 0x1

    .line 488
    :cond_0
    const-string v5, "font size"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "incr size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 490
    .end local v4    # "text":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private static getPixels(Landroid/graphics/Bitmap;)[B
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 457
    if-eqz p0, :cond_0

    .line 458
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 459
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    new-array v1, v2, [B

    .line 460
    .local v1, "pixels":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 461
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 462
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 466
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v1    # "pixels":[B
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getStringWithEllipsis(Ljava/lang/String;FF)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "width"    # F
    .param p2, "fontSize"    # F

    .prologue
    .line 495
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    const-string v1, ""

    .line 504
    :goto_0
    return-object v1

    .line 499
    :cond_0
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 500
    .local v0, "paint":Landroid/text/TextPaint;
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 501
    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 503
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p0, v0, p1, v1}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 504
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static initNativeObject(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 447
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->getPixels(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 448
    .local v0, "pixels":[B
    if-nez v0, :cond_0

    .line 454
    :goto_0
    return-void

    .line 452
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 453
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 452
    invoke-static {v1, v2, v0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->nativeInitBitmapDC(II[B)V

    goto :goto_0
.end method

.method private static native nativeInitBitmapDC(II[B)V
.end method

.method private static newPaint(Ljava/lang/String;II)Landroid/graphics/Paint;
    .locals 7
    .param p0, "fontName"    # Ljava/lang/String;
    .param p1, "fontSize"    # I
    .param p2, "horizontalAlignment"    # I

    .prologue
    const/4 v6, 0x0

    .line 202
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 203
    .local v1, "paint":Landroid/graphics/Paint;
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 204
    int-to-float v3, p1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 205
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 208
    const-string v3, ".ttf"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    :try_start_0
    sget-object v3, Lorg/cocos2dx/lib/Cocos2dxBitmap;->_context:Landroid/content/Context;

    invoke-static {v3, p0}, Lorg/cocos2dx/lib/Cocos2dxTypefaces;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 212
    .local v2, "typeFace":Landroid/graphics/Typeface;
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v2    # "typeFace":Landroid/graphics/Typeface;
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 233
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 237
    :goto_1
    return-object v1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Cocos2dxBitmap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error to create ttf type face: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-static {p0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 221
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {p0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 226
    :pswitch_0
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_1

    .line 229
    :pswitch_1
    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_1

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static refactorString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 417
    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 418
    const-string v3, " "

    .line 443
    :goto_0
    return-object v3

    .line 425
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 426
    .local v2, "strBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 427
    .local v1, "start":I
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 428
    .local v0, "index":I
    :goto_1
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 429
    if-eqz v0, :cond_1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    .line 430
    :cond_1
    const-string v3, " "

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    add-int/lit8 v1, v0, 0x2

    .line 436
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-gt v1, v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ne v0, v3, :cond_4

    .line 443
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 433
    :cond_3
    add-int/lit8 v1, v0, 0x1

    goto :goto_2

    .line 440
    :cond_4
    const-string v3, "\n"

    invoke-virtual {v2, v3, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxBitmap;->_context:Landroid/content/Context;

    .line 73
    return-void
.end method

.method private static splitString(Ljava/lang/String;IILandroid/graphics/Paint;)[Ljava/lang/String;
    .locals 16
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 316
    const-string v11, "\\n"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 317
    .local v7, "lines":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 318
    .local v9, "ret":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 319
    .local v2, "fm":Landroid/graphics/Paint$FontMetricsInt;
    iget v11, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v12, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v11, v12

    int-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v3, v12

    .line 320
    .local v3, "heightPerLine":I
    div-int v8, p2, v3

    .line 322
    .local v8, "maxLines":I
    if-eqz p1, :cond_4

    .line 323
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 324
    .local v10, "strList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    array-length v12, v7

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v12, :cond_0

    aget-object v5, v7, v11

    .line 330
    .local v5, "line":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    float-to-double v14, v13

    .line 329
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v6, v14

    .line 331
    .local v6, "lineWidth":I
    move/from16 v0, p1

    if-le v6, v0, :cond_1

    .line 332
    move/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v5, v0, v1}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->divideStringWithMaxWidth(Ljava/lang/String;ILandroid/graphics/Paint;)Ljava/util/LinkedList;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 339
    :goto_1
    if-lez v8, :cond_2

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v13

    if-lt v13, v8, :cond_2

    .line 345
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "lineWidth":I
    :cond_0
    if-lez v8, :cond_3

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v11

    if-le v11, v8, :cond_3

    .line 346
    :goto_2
    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v11

    if-le v11, v8, :cond_3

    .line 347
    invoke-virtual {v10}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_2

    .line 335
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "lineWidth":I
    :cond_1
    invoke-virtual {v10, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 324
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 351
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "lineWidth":I
    :cond_3
    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v11

    new-array v9, v11, [Ljava/lang/String;

    .line 352
    invoke-virtual {v10, v9}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 365
    .end local v10    # "strList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :goto_3
    return-object v9

    .line 353
    :cond_4
    if-eqz p2, :cond_6

    array-length v11, v7

    if-le v11, v8, :cond_6

    .line 355
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 356
    .restart local v10    # "strList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v8, :cond_5

    .line 357
    aget-object v11, v7, v4

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 356
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 359
    :cond_5
    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v11

    new-array v9, v11, [Ljava/lang/String;

    .line 360
    invoke-virtual {v10, v9}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_3

    .line 362
    .end local v4    # "i":I
    .end local v10    # "strList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_6
    move-object v9, v7

    goto :goto_3
.end method
