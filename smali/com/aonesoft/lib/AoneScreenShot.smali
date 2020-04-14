.class public Lcom/aonesoft/lib/AoneScreenShot;
.super Ljava/lang/Object;
.source "AoneScreenShot.java"


# static fields
.field private static final FILE_NAME_START:Ljava/lang/String; = "aone_"

.field private static final FILE_SUFFIX_NAME:Ljava/lang/String; = ".png"

.field private static final SDK_VERSION:I = 0x13

.field private static imageView:Landroid/widget/ImageView;

.field private static mAvt:Landroid/app/Activity;

.field private static temBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSDCardPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 132
    .local v0, "sdcardDir":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 133
    const-string v3, "mounted"

    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 134
    .local v1, "sdcardExist":Z
    if-eqz v1, :cond_0

    .line 135
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 137
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "avt"    # Landroid/content/Context;

    .prologue
    .line 29
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "avt":Landroid/content/Context;
    sput-object p0, Lcom/aonesoft/lib/AoneScreenShot;->mAvt:Landroid/app/Activity;

    .line 31
    return-void
.end method

.method private static insertImageToMedia(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p0, "obmp"    # Landroid/graphics/Bitmap;
    .param p1, "savePath"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 141
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "insertImageToMedia==savePath="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "insertImageToMedia==filePath="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 143
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .local v5, "dirFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_0

    .line 146
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 148
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v1, "bitmapFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 150
    .local v2, "bitmapWtriter":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 152
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v2    # "bitmapWtriter":Ljava/io/FileOutputStream;
    .local v3, "bitmapWtriter":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x5a

    invoke-virtual {p0, v8, v9, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 155
    sget-object v8, Lcom/aonesoft/lib/AoneScreenShot;->mAvt:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "ScreenShot"

    const-string v10, "ScreenShot"

    invoke-static {v8, v0, v9, v10}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x13

    if-lt v8, v9, :cond_1

    .line 157
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v7, "mediaScanIntent":Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 159
    .local v4, "contentUri":Landroid/net/Uri;
    invoke-virtual {v7, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 160
    sget-object v8, Lcom/aonesoft/lib/AoneScreenShot;->mAvt:Landroid/app/Activity;

    invoke-virtual {v8, v7}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    move-object v2, v3

    .line 168
    .end local v3    # "bitmapWtriter":Ljava/io/FileOutputStream;
    .end local v4    # "contentUri":Landroid/net/Uri;
    .end local v7    # "mediaScanIntent":Landroid/content/Intent;
    .restart local v2    # "bitmapWtriter":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 162
    .end local v2    # "bitmapWtriter":Ljava/io/FileOutputStream;
    .restart local v3    # "bitmapWtriter":Ljava/io/FileOutputStream;
    :cond_1
    sget-object v8, Lcom/aonesoft/lib/AoneScreenShot;->mAvt:Landroid/app/Activity;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.MEDIA_MOUNTED"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "file://"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v8, v9}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 165
    .end local v3    # "bitmapWtriter":Ljava/io/FileOutputStream;
    .restart local v2    # "bitmapWtriter":Ljava/io/FileOutputStream;
    goto :goto_0

    :catch_0
    move-exception v6

    .line 166
    .local v6, "e":Ljava/io/FileNotFoundException;
    :goto_1
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 165
    .end local v2    # "bitmapWtriter":Ljava/io/FileOutputStream;
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "bitmapWtriter":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "bitmapWtriter":Ljava/io/FileOutputStream;
    .restart local v2    # "bitmapWtriter":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static popShotSrceenDialog(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 43
    sget-object v3, Lcom/aonesoft/lib/AoneScreenShot;->mAvt:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 44
    .local v2, "width":I
    sget-object v3, Lcom/aonesoft/lib/AoneScreenShot;->mAvt:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 45
    .local v0, "height":I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    sput-object v3, Lcom/aonesoft/lib/AoneScreenShot;->temBitmap:Landroid/graphics/Bitmap;

    .line 47
    sget-object v3, Lcom/aonesoft/lib/AoneScreenShot;->mAvt:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 49
    .local v1, "view":Landroid/view/View;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 50
    invoke-virtual {v1}, Landroid/view/View;->buildDrawingCache()V

    .line 52
    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    sput-object v3, Lcom/aonesoft/lib/AoneScreenShot;->temBitmap:Landroid/graphics/Bitmap;

    .line 55
    sget-object v3, Lcom/aonesoft/lib/AoneScreenShot;->temBitmap:Landroid/graphics/Bitmap;

    invoke-static {p0, v3}, Lcom/aonesoft/lib/AoneScreenShot;->savePicture(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 56
    sget-object v3, Lcom/aonesoft/lib/AoneScreenShot;->temBitmap:Landroid/graphics/Bitmap;

    return-object v3
.end method

.method private static recyle(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 171
    if-eqz p0, :cond_0

    .line 172
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 174
    const/4 p0, 0x0

    .line 177
    :cond_0
    return-void
.end method

.method private static savePicture(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 12
    .param p0, "givePath"    # Ljava/lang/String;
    .param p1, "obmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 59
    const-string v8, "debug"

    const-string v9, "SavePicture 1"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v8, "debug"

    const-string v9, "SavePicture 2"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v8, "debug"

    const-string v9, "SavePicture 3"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v2, ""

    .line 64
    .local v2, "filePath":Ljava/lang/String;
    const-string v7, ""

    .line 65
    .local v7, "savePath":Ljava/lang/String;
    const-string v3, ""

    .line 66
    .local v3, "file_last_name":Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 67
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_5

    .line 68
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aonesoft/lib/AoneScreenShot;->getSDCardPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "aone/pic/screenShots"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 69
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "aone_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    :goto_0
    :try_start_0
    const-string v8, "debug"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "filepath = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v6, "path":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 102
    const-string v8, "debug"

    const-string v9, "path is not exists"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 105
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 106
    const-string v8, "debug"

    const-string v9, "file create new "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 109
    :cond_2
    const/4 v4, 0x0

    .line 110
    .local v4, "fos":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 111
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    if-eqz v4, :cond_3

    .line 112
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {p1, v8, v9, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 113
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 114
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 115
    const-string v8, "debug"

    const-string v9, "save ok"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "path":Ljava/io/File;
    :cond_3
    :goto_1
    invoke-static {p1, v7, v2}, Lcom/aonesoft/lib/AoneScreenShot;->insertImageToMedia(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_4
    return-void

    .line 71
    :cond_5
    const-string v8, ".png"

    invoke-virtual {p0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 72
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "aone_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 73
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 74
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aonesoft/lib/AoneScreenShot;->getSDCardPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 89
    :goto_2
    const-string v8, "debug"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "savePath = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 92
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    goto/16 :goto_0

    .line 76
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aonesoft/lib/AoneScreenShot;->getSDCardPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 78
    goto :goto_2

    .line 79
    :cond_7
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 80
    .local v5, "index":I
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 81
    const/4 v8, 0x0

    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 82
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 83
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aonesoft/lib/AoneScreenShot;->getSDCardPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 84
    goto :goto_2

    .line 85
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aonesoft/lib/AoneScreenShot;->getSDCardPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 94
    .end local v5    # "index":I
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public static takeScreenShot(Ljava/lang/String;)V
    .locals 0
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {p0}, Lcom/aonesoft/lib/AoneScreenShot;->popShotSrceenDialog(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 35
    return-void
.end method
