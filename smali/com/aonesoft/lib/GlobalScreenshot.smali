.class public Lcom/aonesoft/lib/GlobalScreenshot;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"


# static fields
.field private static final BACKGROUND_ALPHA:F = 0.5f

.field private static final FILE_NAME_START:Ljava/lang/String; = "aone_"

.field private static final FILE_SUFFIX_NAME:Ljava/lang/String; = ".png"

.field private static final SCREENSHOT_DROP_IN_DURATION:I = 0x1ae

.field private static final SCREENSHOT_DROP_IN_MIN_SCALE:F = 0.725f

.field private static final SCREENSHOT_DROP_OUT_DELAY:I = 0x1f4

.field private static final SCREENSHOT_DROP_OUT_DURATION:I = 0x1ae

.field private static final SCREENSHOT_DROP_OUT_MIN_SCALE:F = 0.45f

.field private static final SCREENSHOT_DROP_OUT_MIN_SCALE_OFFSET:F = 0.0f

.field private static final SCREENSHOT_DROP_OUT_SCALE_DURATION:I = 0x172

.field private static final SCREENSHOT_FAST_DROP_OUT_DURATION:I = 0x140

.field private static final SCREENSHOT_FAST_DROP_OUT_MIN_SCALE:F = 0.6f

.field private static final SCREENSHOT_FLASH_TO_PEAK_DURATION:I = 0x82

.field private static final SCREENSHOT_SCALE:F = 1.0f

.field private static final SDK_VERSION:I = 0x13

.field private static final TAG:Ljava/lang/String; = "GlobalScreenshot"


# instance fields
.field private mBackgroundView:Landroid/widget/ImageView;

.field private mBgPadding:F

.field private mBgPaddingScale:F

.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreenshotAnimation:Landroid/animation/AnimatorSet;

.field private mScreenshotFlash:Landroid/widget/ImageView;

.field private mScreenshotLayout:Landroid/view/View;

.field private mScreenshotView:Landroid/widget/ImageView;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 91
    .local v9, "r":Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mContext:Landroid/content/Context;

    .line 93
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 92
    check-cast v8, Landroid/view/LayoutInflater;

    .line 97
    .local v8, "layoutInflater":Landroid/view/LayoutInflater;
    const-string v0, "layout"

    const-string v2, "global_screenshot"

    invoke-static {p1, v0, v2}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const-string v2, "id"

    const-string v4, "global_screenshot_background"

    invoke-static {p1, v2, v4}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    .line 100
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const-string v2, "id"

    const-string v4, "global_screenshot"

    invoke-static {p1, v2, v4}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    .line 101
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const-string v2, "id"

    const-string v4, "global_screenshot_flash"

    invoke-static {p1, v2, v4}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    .line 104
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 105
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v2, Lcom/aonesoft/lib/GlobalScreenshot$1;

    invoke-direct {v2, p0}, Lcom/aonesoft/lib/GlobalScreenshot$1;-><init>(Lcom/aonesoft/lib/GlobalScreenshot;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 114
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 116
    const/16 v5, 0x7d3

    .line 117
    const v6, 0x1080500

    .line 121
    const/4 v7, -0x3

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 114
    iput-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 122
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "ScreenshotAnimation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 123
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    .line 125
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    .line 126
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 127
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 130
    const-string v0, "dimen"

    const-string v1, "global_screenshot_bg_padding"

    invoke-static {p1, v0, v1}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mBgPadding:F

    .line 131
    iget v0, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mBgPadding:F

    iget-object v1, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mBgPaddingScale:F

    .line 136
    return-void
.end method

.method private SavePicture(Ljava/lang/String;)V
    .locals 12
    .param p1, "givePath"    # Ljava/lang/String;

    .prologue
    .line 177
    const-string v9, "debug"

    const-string v10, "SavePicture 1"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v9, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 179
    const-string v9, "debug"

    const-string v10, "SavePicture 2"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v9, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 181
    .local v6, "obmp":Landroid/graphics/Bitmap;
    const-string v9, "debug"

    const-string v10, "SavePicture 3"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v2, ""

    .line 184
    .local v2, "filePath":Ljava/lang/String;
    const-string v8, ""

    .line 185
    .local v8, "savePath":Ljava/lang/String;
    const-string v3, ""

    .line 186
    .local v3, "file_last_name":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 187
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_5

    .line 188
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/aonesoft/lib/GlobalScreenshot;->getSDCardPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "aone/pic/screenShots"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 189
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "aone_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".png"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 218
    :goto_0
    :try_start_0
    const-string v9, "debug"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "filepath = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    .local v7, "path":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 222
    const-string v9, "debug"

    const-string v10, "path is not exists"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 225
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 226
    const-string v9, "debug"

    const-string v10, "file create new "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 229
    :cond_2
    const/4 v4, 0x0

    .line 230
    .local v4, "fos":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 231
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    if-eqz v4, :cond_3

    .line 232
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {v6, v9, v10, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 233
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 234
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 235
    const-string v9, "debug"

    const-string v10, "save ok"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "path":Ljava/io/File;
    :cond_3
    :goto_1
    invoke-direct {p0, v6, v8, v2}, Lcom/aonesoft/lib/GlobalScreenshot;->insertImageToMedia(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_4
    invoke-static {v6}, Lcom/aonesoft/lib/GlobalScreenshot;->recyle(Landroid/graphics/Bitmap;)V

    .line 243
    return-void

    .line 191
    :cond_5
    const-string v9, ".png"

    invoke-virtual {p1, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 192
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "aone_"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".png"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 193
    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 194
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/aonesoft/lib/GlobalScreenshot;->getSDCardPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 209
    :goto_2
    const-string v9, "debug"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "savePath = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 212
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 213
    goto/16 :goto_0

    .line 196
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/aonesoft/lib/GlobalScreenshot;->getSDCardPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 198
    goto :goto_2

    .line 199
    :cond_7
    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 200
    .local v5, "index":I
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 201
    const/4 v9, 0x0

    invoke-virtual {p1, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 202
    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 203
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/aonesoft/lib/GlobalScreenshot;->getSDCardPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 204
    goto :goto_2

    .line 205
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/aonesoft/lib/GlobalScreenshot;->getSDCardPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 214
    .end local v5    # "index":I
    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method static synthetic access$0(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$1(Lcom/aonesoft/lib/GlobalScreenshot;Ljava/lang/Runnable;IIZZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 297
    invoke-direct/range {p0 .. p6}, Lcom/aonesoft/lib/GlobalScreenshot;->startAnimation(Ljava/lang/Runnable;IIZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$10(Lcom/aonesoft/lib/GlobalScreenshot;)F
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mBgPaddingScale:F

    return v0
.end method

.method static synthetic access$11(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/aonesoft/lib/GlobalScreenshot;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 486
    invoke-direct {p0, p1}, Lcom/aonesoft/lib/GlobalScreenshot;->saveScreenshotInWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$3(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$4(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/view/View;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5(Lcom/aonesoft/lib/GlobalScreenshot;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/aonesoft/lib/GlobalScreenshot;->SavePicture(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/aonesoft/lib/GlobalScreenshot;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$7(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$9(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private createScreenshotDropInAnimation()Landroid/animation/ValueAnimator;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 344
    const v3, 0x3e9aca6b

    .line 346
    .local v3, "flashPeakDurationPct":F
    const v2, 0x3f1aca6b

    .line 347
    .local v2, "flashDurationPct":F
    new-instance v1, Lcom/aonesoft/lib/GlobalScreenshot$5;

    invoke-direct {v1, p0}, Lcom/aonesoft/lib/GlobalScreenshot$5;-><init>(Lcom/aonesoft/lib/GlobalScreenshot;)V

    .line 357
    .local v1, "flashAlphaInterpolator":Landroid/view/animation/Interpolator;
    new-instance v4, Lcom/aonesoft/lib/GlobalScreenshot$6;

    invoke-direct {v4, p0}, Lcom/aonesoft/lib/GlobalScreenshot$6;-><init>(Lcom/aonesoft/lib/GlobalScreenshot;)V

    .line 367
    .local v4, "scaleInterpolator":Landroid/view/animation/Interpolator;
    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 368
    .local v0, "anim":Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x1ae

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 369
    new-instance v5, Lcom/aonesoft/lib/GlobalScreenshot$7;

    invoke-direct {v5, p0}, Lcom/aonesoft/lib/GlobalScreenshot$7;-><init>(Lcom/aonesoft/lib/GlobalScreenshot;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 389
    new-instance v5, Lcom/aonesoft/lib/GlobalScreenshot$8;

    invoke-direct {v5, p0, v4, v1}, Lcom/aonesoft/lib/GlobalScreenshot$8;-><init>(Lcom/aonesoft/lib/GlobalScreenshot;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 403
    return-object v0

    .line 367
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createScreenshotDropOutAnimation(IIZZ)Landroid/animation/ValueAnimator;
    .locals 10
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "statusBarVisible"    # Z
    .param p4, "navBarVisible"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 409
    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 410
    .local v0, "anim":Landroid/animation/ValueAnimator;
    const-wide/16 v8, 0x1f4

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 411
    new-instance v7, Lcom/aonesoft/lib/GlobalScreenshot$9;

    invoke-direct {v7, p0}, Lcom/aonesoft/lib/GlobalScreenshot$9;-><init>(Lcom/aonesoft/lib/GlobalScreenshot;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 421
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 423
    :cond_0
    const-wide/16 v8, 0x140

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 424
    new-instance v7, Lcom/aonesoft/lib/GlobalScreenshot$10;

    invoke-direct {v7, p0}, Lcom/aonesoft/lib/GlobalScreenshot$10;-><init>(Lcom/aonesoft/lib/GlobalScreenshot;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 479
    :goto_0
    return-object v0

    .line 440
    :cond_1
    const v5, 0x3f5c4771

    .line 442
    .local v5, "scaleDurationPct":F
    new-instance v6, Lcom/aonesoft/lib/GlobalScreenshot$11;

    invoke-direct {v6, p0}, Lcom/aonesoft/lib/GlobalScreenshot$11;-><init>(Lcom/aonesoft/lib/GlobalScreenshot;)V

    .line 454
    .local v6, "scaleInterpolator":Landroid/view/animation/Interpolator;
    int-to-float v7, p1

    const/high16 v8, 0x40000000    # 2.0f

    iget v9, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mBgPadding:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float v3, v7, v8

    .line 455
    .local v3, "halfScreenWidth":F
    int-to-float v7, p2

    const/high16 v8, 0x40000000    # 2.0f

    iget v9, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mBgPadding:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float v2, v7, v8

    .line 456
    .local v2, "halfScreenHeight":F
    const/4 v4, 0x0

    .line 457
    .local v4, "offsetPct":F
    new-instance v1, Landroid/graphics/PointF;

    .line 458
    neg-float v7, v3

    const v8, 0x3ee66666    # 0.45f

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    .line 459
    neg-float v8, v2

    const v9, 0x3ee66666    # 0.45f

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    .line 457
    invoke-direct {v1, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 462
    .local v1, "finalPos":Landroid/graphics/PointF;
    const-wide/16 v8, 0x1ae

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 463
    new-instance v7, Lcom/aonesoft/lib/GlobalScreenshot$12;

    invoke-direct {v7, p0, v6, v1}, Lcom/aonesoft/lib/GlobalScreenshot$12;-><init>(Lcom/aonesoft/lib/GlobalScreenshot;Landroid/view/animation/Interpolator;Landroid/graphics/PointF;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 409
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getSDCardPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 283
    const/4 v0, 0x0

    .line 285
    .local v0, "sdcardDir":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 286
    const-string v3, "mounted"

    .line 285
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 287
    .local v1, "sdcardExist":Z
    if-eqz v1, :cond_0

    .line 288
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 290
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private insertImageToMedia(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "obmp"    # Landroid/graphics/Bitmap;
    .param p2, "savePath"    # Ljava/lang/String;
    .param p3, "filePath"    # Ljava/lang/String;

    .prologue
    .line 248
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "insertImageToMedia==savePath="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 249
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "insertImageToMedia==filePath="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 250
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .local v6, "dirFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_0

    .line 253
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 255
    :cond_0
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    .local v2, "bitmapFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 257
    .local v3, "bitmapWtriter":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 259
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .end local v3    # "bitmapWtriter":Ljava/io/FileOutputStream;
    .local v4, "bitmapWtriter":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x5a

    invoke-virtual {p1, v9, v10, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 262
    iget-object v9, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "ScreenShot"

    const-string v11, "ScreenShot"

    invoke-static {v9, v1, v10, v11}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 263
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x13

    if-lt v9, v10, :cond_1

    .line 264
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    .local v8, "mediaScanIntent":Landroid/content/Intent;
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 266
    .local v5, "contentUri":Landroid/net/Uri;
    invoke-virtual {v8, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 267
    iget-object v9, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move-object v3, v4

    .line 275
    .end local v4    # "bitmapWtriter":Ljava/io/FileOutputStream;
    .end local v5    # "contentUri":Landroid/net/Uri;
    .end local v8    # "mediaScanIntent":Landroid/content/Intent;
    .restart local v3    # "bitmapWtriter":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 269
    .end local v3    # "bitmapWtriter":Ljava/io/FileOutputStream;
    .restart local v4    # "bitmapWtriter":Ljava/io/FileOutputStream;
    :cond_1
    iget-object v9, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.MEDIA_MOUNTED"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "file://"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v9, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 272
    .end local v4    # "bitmapWtriter":Ljava/io/FileOutputStream;
    .restart local v3    # "bitmapWtriter":Ljava/io/FileOutputStream;
    goto :goto_0

    :catch_0
    move-exception v7

    .line 273
    .local v7, "e":Ljava/io/FileNotFoundException;
    :goto_1
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 272
    .end local v3    # "bitmapWtriter":Ljava/io/FileOutputStream;
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "bitmapWtriter":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "bitmapWtriter":Ljava/io/FileOutputStream;
    .restart local v3    # "bitmapWtriter":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private notifyScreenshotError(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 484
    return-void
.end method

.method private static recyle(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 491
    if-eqz p0, :cond_0

    .line 492
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 494
    const/4 p0, 0x0

    .line 497
    :cond_0
    return-void
.end method

.method private saveScreenshotInWorkerThread(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 488
    return-void
.end method

.method private startAnimation(Ljava/lang/Runnable;IIZZLjava/lang/String;)V
    .locals 5
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "statusBarVisible"    # Z
    .param p5, "navBarVisible"    # Z
    .param p6, "path"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 300
    iget-object v2, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 301
    iget-object v2, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 304
    iget-object v2, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 305
    iget-object v2, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->end()V

    .line 306
    iget-object v2, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 309
    :cond_0
    iget-object v2, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    iget-object v4, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    invoke-direct {p0}, Lcom/aonesoft/lib/GlobalScreenshot;->createScreenshotDropInAnimation()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 311
    .local v0, "screenshotDropInAnim":Landroid/animation/ValueAnimator;
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/aonesoft/lib/GlobalScreenshot;->createScreenshotDropOutAnimation(IIZZ)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 313
    .local v1, "screenshotFadeOutAnim":Landroid/animation/ValueAnimator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    .line 314
    iget-object v2, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 315
    iget-object v2, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/aonesoft/lib/GlobalScreenshot$3;

    invoke-direct {v3, p0, p1, p6}, Lcom/aonesoft/lib/GlobalScreenshot$3;-><init>(Lcom/aonesoft/lib/GlobalScreenshot;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 329
    iget-object v2, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v3, Lcom/aonesoft/lib/GlobalScreenshot$4;

    invoke-direct {v3, p0}, Lcom/aonesoft/lib/GlobalScreenshot$4;-><init>(Lcom/aonesoft/lib/GlobalScreenshot;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 340
    return-void
.end method


# virtual methods
.method public takeScreenshot(Landroid/view/View;Ljava/lang/Runnable;ZZLjava/lang/String;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "finisher"    # Ljava/lang/Runnable;
    .param p3, "statusBarVisible"    # Z
    .param p4, "navBarVisible"    # Z
    .param p5, "path"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 146
    const-string v0, "debug"

    const-string v1, "takeScreenshot start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-static {p1}, Lcom/aonesoft/lib/AoneSurfaceControl;->screenshot(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 148
    const-string v0, "debug"

    const-string v1, "takeScreenshot 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/aonesoft/lib/GlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;)V

    .line 151
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 174
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 157
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 159
    const-string v0, "debug"

    const-string v1, "takeScreenshot 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v0, "debug"

    const-string v1, "takeScreenshot 3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v0, Lcom/aonesoft/lib/GlobalScreenshot$2;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/aonesoft/lib/GlobalScreenshot$2;-><init>(Lcom/aonesoft/lib/GlobalScreenshot;Ljava/lang/Runnable;ZZLjava/lang/String;)V

    invoke-static {v0}, Lorg/cocos2dx/plugin/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 173
    const-string v0, "debug"

    const-string v1, "takeScreenshot end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
