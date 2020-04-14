.class public Lcom/aonesoft/lib/ClipPictureActivity;
.super Landroid/app/Activity;
.source "ClipPictureActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DRAG:I = 0x1

.field private static final NONE:I = 0x0

.field private static final ZOOM:I = 0x2


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private blackBtn:Landroid/widget/ImageView;

.field private clipview:Lcom/aonesoft/lib/ClipView;

.field private matrix:Landroid/graphics/Matrix;

.field private mid:Landroid/graphics/PointF;

.field private mode:I

.field private oldDist:F

.field private savedMatrix:Landroid/graphics/Matrix;

.field private srcPic:Landroid/widget/ImageView;

.field private start:Landroid/graphics/PointF;

.field private sure:Landroid/widget/TextView;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/aonesoft/lib/ClipPictureActivity;->matrix:Landroid/graphics/Matrix;

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/aonesoft/lib/ClipPictureActivity;->savedMatrix:Landroid/graphics/Matrix;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/aonesoft/lib/ClipPictureActivity;->mode:I

    .line 53
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/aonesoft/lib/ClipPictureActivity;->start:Landroid/graphics/PointF;

    .line 55
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/aonesoft/lib/ClipPictureActivity;->mid:Landroid/graphics/PointF;

    .line 56
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/aonesoft/lib/ClipPictureActivity;->oldDist:F

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/aonesoft/lib/ClipPictureActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/aonesoft/lib/ClipPictureActivity;->srcPic:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/aonesoft/lib/ClipPictureActivity;I)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/aonesoft/lib/ClipPictureActivity;->initClipView(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/aonesoft/lib/ClipPictureActivity;)Lcom/aonesoft/lib/ClipView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/aonesoft/lib/ClipPictureActivity;->clipview:Lcom/aonesoft/lib/ClipView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/aonesoft/lib/ClipPictureActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/aonesoft/lib/ClipPictureActivity;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4(Lcom/aonesoft/lib/ClipPictureActivity;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/aonesoft/lib/ClipPictureActivity;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private compressImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 136
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 137
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 145
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 146
    .local v2, "isBm":Ljava/io/ByteArrayInputStream;
    invoke-static {v2, v5, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 148
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 149
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-object v1

    .line 150
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/aonesoft/lib/ClipPictureActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 309
    .local v3, "view":Landroid/view/View;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 310
    invoke-virtual {v3}, Landroid/view/View;->buildDrawingCache()V

    .line 313
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 314
    .local v1, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/aonesoft/lib/ClipPictureActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 315
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 317
    .local v2, "statusBarHeight":I
    invoke-virtual {v3}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 318
    iget-object v5, p0, Lcom/aonesoft/lib/ClipPictureActivity;->clipview:Lcom/aonesoft/lib/ClipView;

    invoke-virtual {v5}, Lcom/aonesoft/lib/ClipView;->getClipLeftMargin()I

    move-result v5

    iget-object v6, p0, Lcom/aonesoft/lib/ClipPictureActivity;->clipview:Lcom/aonesoft/lib/ClipView;

    invoke-virtual {v6}, Lcom/aonesoft/lib/ClipView;->getClipTopMargin()I

    move-result v6

    .line 319
    add-int/2addr v6, v2

    iget-object v7, p0, Lcom/aonesoft/lib/ClipPictureActivity;->clipview:Lcom/aonesoft/lib/ClipView;

    invoke-virtual {v7}, Lcom/aonesoft/lib/ClipView;->getClipWidth()I

    move-result v7

    .line 320
    iget-object v8, p0, Lcom/aonesoft/lib/ClipPictureActivity;->clipview:Lcom/aonesoft/lib/ClipView;

    invoke-virtual {v8}, Lcom/aonesoft/lib/ClipView;->getClipHeight()I

    move-result v8

    .line 317
    invoke-static {v4, v5, v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 323
    .local v0, "finalBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/view/View;->destroyDrawingCache()V

    .line 324
    return-object v0
.end method

.method public static getPicFromBytes([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v1, 0x0

    .line 218
    if-eqz p0, :cond_1

    .line 219
    if-eqz p1, :cond_0

    .line 220
    array-length v0, p0

    invoke-static {p0, v1, v0, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 224
    :goto_0
    return-object v0

    .line 223
    :cond_0
    array-length v0, p0

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 224
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getimage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "srcPath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 92
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 94
    .local v8, "newOpts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v6, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 95
    invoke-static {p1, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 96
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iput-boolean v1, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 97
    const/4 v2, 0x2

    iput v2, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 99
    invoke-static {p1, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 100
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 101
    .local v5, "m":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 102
    .local v3, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 103
    .local v4, "height":I
    iget-object v2, p0, Lcom/aonesoft/lib/ClipPictureActivity;->uri:Ljava/lang/String;

    invoke-static {v2}, Lcom/aonesoft/lib/ClipPictureActivity;->readPictureDegree(Ljava/lang/String;)I

    move-result v7

    .line 104
    .local v7, "degree":I
    int-to-float v2, v7

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    move v2, v1

    .line 105
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 106
    return-object v0
.end method

.method private initClipView(I)V
    .locals 4
    .param p1, "top"    # I

    .prologue
    const/4 v3, -0x1

    .line 161
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 162
    .local v0, "metric":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/aonesoft/lib/ClipPictureActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 163
    iget-object v1, p0, Lcom/aonesoft/lib/ClipPictureActivity;->uri:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/aonesoft/lib/ClipPictureActivity;->getimage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/aonesoft/lib/ClipPictureActivity;->bitmap:Landroid/graphics/Bitmap;

    .line 164
    new-instance v1, Lcom/aonesoft/lib/ClipView;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {v1, p0, v2}, Lcom/aonesoft/lib/ClipView;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/aonesoft/lib/ClipPictureActivity;->clipview:Lcom/aonesoft/lib/ClipView;

    .line 165
    iget-object v1, p0, Lcom/aonesoft/lib/ClipPictureActivity;->clipview:Lcom/aonesoft/lib/ClipView;

    invoke-virtual {v1, p1}, Lcom/aonesoft/lib/ClipView;->setCustomTopBarHeight(I)V

    .line 166
    iget-object v1, p0, Lcom/aonesoft/lib/ClipPictureActivity;->clipview:Lcom/aonesoft/lib/ClipView;

    new-instance v2, Lcom/aonesoft/lib/ClipPictureActivity$2;

    invoke-direct {v2, p0}, Lcom/aonesoft/lib/ClipPictureActivity$2;-><init>(Lcom/aonesoft/lib/ClipPictureActivity;)V

    invoke-virtual {v1, v2}, Lcom/aonesoft/lib/ClipView;->addOnDrawCompleteListener(Lcom/aonesoft/lib/ClipView$OnDrawListenerComplete;)V

    .line 198
    iget-object v1, p0, Lcom/aonesoft/lib/ClipPictureActivity;->clipview:Lcom/aonesoft/lib/ClipView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 199
    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 198
    invoke-virtual {p0, v1, v2}, Lcom/aonesoft/lib/ClipPictureActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    return-void
.end method

.method private midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "point"    # Landroid/graphics/PointF;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 286
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float v0, v2, v3

    .line 287
    .local v0, "x":F
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float v1, v2, v3

    .line 288
    .local v1, "y":F
    div-float v2, v0, v4

    div-float v3, v1, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 289
    return-void
.end method

.method public static readPictureDegree(Ljava/lang/String;)I
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 113
    .local v0, "degree":I
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    .line 114
    const-string v4, "file:///"

    const-string v5, ""

    .line 113
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 114
    const-string v5, "content://"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 113
    invoke-direct {v2, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 116
    .local v2, "exifInterface":Landroid/media/ExifInterface;
    const-string v4, "Orientation"

    .line 117
    const/4 v5, 0x1

    .line 115
    invoke-virtual {v2, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 118
    .local v3, "orientation":I
    packed-switch v3, :pswitch_data_0

    .line 132
    .end local v2    # "exifInterface":Landroid/media/ExifInterface;
    .end local v3    # "orientation":I
    :goto_0
    :pswitch_0
    return v0

    .line 120
    .restart local v2    # "exifInterface":Landroid/media/ExifInterface;
    .restart local v3    # "orientation":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 121
    goto :goto_0

    .line 123
    :pswitch_2
    const/16 v0, 0xb4

    .line 124
    goto :goto_0

    .line 126
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 129
    .end local v2    # "exifInterface":Landroid/media/ExifInterface;
    .end local v3    # "orientation":I
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static readStream(Ljava/io/InputStream;)[B
    .locals 5
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 203
    const/high16 v4, 0x100000

    new-array v0, v4, [B

    .line 204
    .local v0, "buffer":[B
    const/4 v2, -0x1

    .line 205
    .local v2, "len":I
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 206
    .local v3, "outStream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 209
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 210
    .local v1, "data":[B
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 211
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 212
    return-object v1

    .line 207
    .end local v1    # "data":[B
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method private spacing(Landroid/view/MotionEvent;)F
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 274
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 275
    .local v0, "x":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 276
    .local v1, "y":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 292
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "id"

    const-string v3, "sure"

    invoke-static {p0, v2, v3}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 293
    invoke-direct {p0}, Lcom/aonesoft/lib/ClipPictureActivity;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 294
    .local v0, "clipBitmap":Landroid/graphics/Bitmap;
    const-string v1, "\u5df2\u526a\u88c1\u4e3aBitmap"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 299
    .end local v0    # "clipBitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "id"

    const-string v3, "black_btn"

    invoke-static {p0, v2, v3}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/aonesoft/lib/ClipPictureActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const-string v1, "layout"

    const-string v2, "activity_clip_picture"

    invoke-static {p0, v1, v2}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/aonesoft/lib/ClipPictureActivity;->setContentView(I)V

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 68
    const-string v2, "mm.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    iput-object v1, p0, Lcom/aonesoft/lib/ClipPictureActivity;->uri:Ljava/lang/String;

    .line 75
    const-string v1, "id"

    const-string v2, "sure"

    invoke-static {p0, v1, v2}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/aonesoft/lib/ClipPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/aonesoft/lib/ClipPictureActivity;->sure:Landroid/widget/TextView;

    .line 76
    const-string v1, "id"

    const-string v2, "black_btn"

    invoke-static {p0, v1, v2}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/aonesoft/lib/ClipPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/aonesoft/lib/ClipPictureActivity;->blackBtn:Landroid/widget/ImageView;

    .line 77
    iget-object v1, p0, Lcom/aonesoft/lib/ClipPictureActivity;->sure:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v1, p0, Lcom/aonesoft/lib/ClipPictureActivity;->blackBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const-string v1, "id"

    const-string v2, "src_pic"

    invoke-static {p0, v1, v2}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/aonesoft/lib/ClipPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/aonesoft/lib/ClipPictureActivity;->srcPic:Landroid/widget/ImageView;

    .line 80
    iget-object v1, p0, Lcom/aonesoft/lib/ClipPictureActivity;->srcPic:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 81
    iget-object v1, p0, Lcom/aonesoft/lib/ClipPictureActivity;->srcPic:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 82
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/aonesoft/lib/ClipPictureActivity$1;

    invoke-direct {v1, p0}, Lcom/aonesoft/lib/ClipPictureActivity$1;-><init>(Lcom/aonesoft/lib/ClipPictureActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 89
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 329
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 330
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x2

    const/high16 v4, 0x41200000    # 10.0f

    const/4 v7, 0x1

    .line 228
    move-object v2, p1

    check-cast v2, Landroid/widget/ImageView;

    .line 229
    .local v2, "view":Landroid/widget/ImageView;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    packed-switch v3, :pswitch_data_0

    .line 263
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/aonesoft/lib/ClipPictureActivity;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 264
    return v7

    .line 231
    :pswitch_1
    iget-object v3, p0, Lcom/aonesoft/lib/ClipPictureActivity;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/aonesoft/lib/ClipPictureActivity;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 233
    iget-object v3, p0, Lcom/aonesoft/lib/ClipPictureActivity;->start:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 234
    iput v7, p0, Lcom/aonesoft/lib/ClipPictureActivity;->mode:I

    goto :goto_0

    .line 237
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/aonesoft/lib/ClipPictureActivity;->spacing(Landroid/view/MotionEvent;)F

    move-result v3

    iput v3, p0, Lcom/aonesoft/lib/ClipPictureActivity;->oldDist:F

    .line 238
    iget v3, p0, Lcom/aonesoft/lib/ClipPictureActivity;->oldDist:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 239
    iget-object v3, p0, Lcom/aonesoft/lib/ClipPictureActivity;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/aonesoft/lib/ClipPictureActivity;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 240
    iget-object v3, p0, Lcom/aonesoft/lib/ClipPictureActivity;->mid:Landroid/graphics/PointF;

    invoke-direct {p0, v3, p2}, Lcom/aonesoft/lib/ClipPictureActivity;->midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 241
    iput v5, p0, Lcom/aonesoft/lib/ClipPictureActivity;->mode:I

    goto :goto_0

    .line 246
    :pswitch_3
    const/4 v3, 0x0

    iput v3, p0, Lcom/aonesoft/lib/ClipPictureActivity;->mode:I

    goto :goto_0

    .line 249
    :pswitch_4
    iget v3, p0, Lcom/aonesoft/lib/ClipPictureActivity;->mode:I

    if-ne v3, v7, :cond_1

    .line 250
    iget-object v3, p0, Lcom/aonesoft/lib/ClipPictureActivity;->matrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/aonesoft/lib/ClipPictureActivity;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 251
    iget-object v3, p0, Lcom/aonesoft/lib/ClipPictureActivity;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/aonesoft/lib/ClipPictureActivity;->start:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 252
    iget-object v6, p0, Lcom/aonesoft/lib/ClipPictureActivity;->start:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    .line 251
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 253
    :cond_1
    iget v3, p0, Lcom/aonesoft/lib/ClipPictureActivity;->mode:I

    if-ne v3, v5, :cond_0

    .line 254
    invoke-direct {p0, p2}, Lcom/aonesoft/lib/ClipPictureActivity;->spacing(Landroid/view/MotionEvent;)F

    move-result v0

    .line 255
    .local v0, "newDist":F
    cmpl-float v3, v0, v4

    if-lez v3, :cond_0

    .line 256
    iget-object v3, p0, Lcom/aonesoft/lib/ClipPictureActivity;->matrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/aonesoft/lib/ClipPictureActivity;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 257
    iget v3, p0, Lcom/aonesoft/lib/ClipPictureActivity;->oldDist:F

    div-float v1, v0, v3

    .line 258
    .local v1, "scale":F
    iget-object v3, p0, Lcom/aonesoft/lib/ClipPictureActivity;->matrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/aonesoft/lib/ClipPictureActivity;->mid:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/aonesoft/lib/ClipPictureActivity;->mid:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto/16 :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
