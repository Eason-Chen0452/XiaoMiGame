.class public Lcom/aonesoft/lib/AoneFixHeadImg;
.super Ljava/lang/Object;
.source "AoneFixHeadImg.java"


# static fields
.field private static final CODE_CAMERA_REQUEST:I = 0xa1

.field private static final CODE_GALLERY_REQUEST:I = 0xa0

.field private static final CODE_RESULT_REQUEST:I = 0xa2

.field private static final OUTPUT_X:I = 0x1e0

.field private static final OUTPUT_Y:I = 0x1e0

.field private static final PHOTO_CAMERA_PICKED_WITH_DATA:I = 0xbce

.field private static final TAG:Ljava/lang/String; = "AoneFixHeadImg"

.field private static crop:I

.field private static cropImagePath:Ljava/lang/String;

.field private static cropPhotoUri:Landroid/net/Uri;

.field private static fileCropUri:Ljava/io/File;

.field private static fileUri:Ljava/io/File;

.field private static imageUri:Landroid/net/Uri;

.field private static mContext:Landroid/content/Context;

.field private static mDialogView:Landroid/view/View;

.field private static mHeightPixel:I

.field private static mImageUtils:Lcom/aonesoft/lib/ImageUtils;

.field private static mImageView:Landroid/widget/ImageView;

.field private static mWidthPixel:I

.field private static setHeadDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/16 v0, 0x80

    sput v0, Lcom/aonesoft/lib/AoneFixHeadImg;->crop:I

    .line 42
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/photo.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/aonesoft/lib/AoneFixHeadImg;->fileUri:Ljava/io/File;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ImageScale()V
    .locals 3

    .prologue
    .line 156
    new-instance v0, Landroid/content/Intent;

    .line 157
    const-string v1, "android.intent.action.PICK"

    .line 158
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 156
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 159
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/aonesoft/lib/AoneFixHeadImg;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const/16 v2, 0xa0

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 160
    return-void
.end method

.method static synthetic access$0(I)V
    .locals 0

    .prologue
    .line 51
    sput p0, Lcom/aonesoft/lib/AoneFixHeadImg;->mWidthPixel:I

    return-void
.end method

.method static synthetic access$1(I)V
    .locals 0

    .prologue
    .line 52
    sput p0, Lcom/aonesoft/lib/AoneFixHeadImg;->mHeightPixel:I

    return-void
.end method

.method static synthetic access$10()Landroid/view/View;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/aonesoft/lib/AoneFixHeadImg;->mDialogView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$11()I
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/aonesoft/lib/AoneFixHeadImg;->mWidthPixel:I

    return v0
.end method

.method static synthetic access$12()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/aonesoft/lib/AoneFixHeadImg;->mHeightPixel:I

    return v0
.end method

.method static synthetic access$13()V
    .locals 0

    .prologue
    .line 111
    invoke-static {}, Lcom/aonesoft/lib/AoneFixHeadImg;->bindDialogEvent()V

    return-void
.end method

.method static synthetic access$14()Ljava/io/File;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/aonesoft/lib/AoneFixHeadImg;->fileUri:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$15(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 43
    sput-object p0, Lcom/aonesoft/lib/AoneFixHeadImg;->imageUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$16()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/aonesoft/lib/AoneFixHeadImg;->imageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    sput-object p0, Lcom/aonesoft/lib/AoneFixHeadImg;->cropImagePath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    invoke-static {}, Lcom/aonesoft/lib/AoneFixHeadImg;->getSDCardPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 50
    sput-object p0, Lcom/aonesoft/lib/AoneFixHeadImg;->fileCropUri:Ljava/io/File;

    return-void
.end method

.method static synthetic access$5()Ljava/io/File;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/aonesoft/lib/AoneFixHeadImg;->fileCropUri:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$6()Landroid/content/Context;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/aonesoft/lib/AoneFixHeadImg;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7(Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 36
    sput-object p0, Lcom/aonesoft/lib/AoneFixHeadImg;->setHeadDialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$8()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/aonesoft/lib/AoneFixHeadImg;->setHeadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$9(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 37
    sput-object p0, Lcom/aonesoft/lib/AoneFixHeadImg;->mDialogView:Landroid/view/View;

    return-void
.end method

.method private static bindDialogEvent()V
    .locals 7

    .prologue
    .line 112
    sget-object v3, Lcom/aonesoft/lib/AoneFixHeadImg;->mDialogView:Landroid/view/View;

    .line 113
    sget-object v4, Lcom/aonesoft/lib/AoneFixHeadImg;->mContext:Landroid/content/Context;

    const-string v5, "id"

    const-string v6, "iv_userinfo_takepic"

    invoke-static {v4, v5, v6}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 114
    .local v0, "cameraButton":Landroid/widget/Button;
    sget-object v3, Lcom/aonesoft/lib/AoneFixHeadImg;->mDialogView:Landroid/view/View;

    .line 115
    sget-object v4, Lcom/aonesoft/lib/AoneFixHeadImg;->mContext:Landroid/content/Context;

    const-string v5, "id"

    const-string v6, "iv_userinfo_choosepic"

    invoke-static {v4, v5, v6}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 116
    .local v2, "photoButton":Landroid/widget/Button;
    sget-object v3, Lcom/aonesoft/lib/AoneFixHeadImg;->mDialogView:Landroid/view/View;

    .line 117
    sget-object v4, Lcom/aonesoft/lib/AoneFixHeadImg;->mContext:Landroid/content/Context;

    const-string v5, "id"

    const-string v6, "iv_userinfo_cancle"

    invoke-static {v4, v5, v6}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 119
    .local v1, "cancelButton":Landroid/widget/Button;
    new-instance v3, Lcom/aonesoft/lib/AoneFixHeadImg$2;

    invoke-direct {v3}, Lcom/aonesoft/lib/AoneFixHeadImg$2;-><init>()V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    new-instance v3, Lcom/aonesoft/lib/AoneFixHeadImg$3;

    invoke-direct {v3}, Lcom/aonesoft/lib/AoneFixHeadImg$3;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    new-instance v3, Lcom/aonesoft/lib/AoneFixHeadImg$4;

    invoke-direct {v3}, Lcom/aonesoft/lib/AoneFixHeadImg$4;-><init>()V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    return-void
.end method

.method public static cropImage(Landroid/net/Uri;)V
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x1

    .line 309
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 310
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 313
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 314
    const-string v1, "outputX"

    sget v2, Lcom/aonesoft/lib/AoneFixHeadImg;->mWidthPixel:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    const-string v1, "outputY"

    sget v2, Lcom/aonesoft/lib/AoneFixHeadImg;->mHeightPixel:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 317
    const-string v1, "scale"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 318
    const-string v1, "return-data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 319
    const-string v1, "output"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 320
    const-string v1, "outputFormat"

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    sget-object v1, Lcom/aonesoft/lib/AoneFixHeadImg;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 322
    return-void
.end method

.method protected static doCropPhoto(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p0, "data"    # Landroid/graphics/Bitmap;

    .prologue
    .line 168
    invoke-static {p0}, Lcom/aonesoft/lib/AoneFixHeadImg;->getCropImageIntent(Landroid/graphics/Bitmap;)Landroid/content/Intent;

    move-result-object v0

    .line 169
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/aonesoft/lib/AoneFixHeadImg;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const/16 v2, 0xbce

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 170
    return-void
.end method

.method public static getCropImageIntent(Landroid/graphics/Bitmap;)Landroid/content/Intent;
    .locals 4
    .param p0, "data"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x1

    .line 173
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v1, "data"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 176
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    const-string v1, "outputX"

    sget v2, Lcom/aonesoft/lib/AoneFixHeadImg;->crop:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    const-string v1, "outputY"

    sget v2, Lcom/aonesoft/lib/AoneFixHeadImg;->crop:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 182
    return-object v0
.end method

.method public static getHeadImage(Ljava/lang/String;II)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "widthPixel"    # I
    .param p2, "heightPixel"    # I

    .prologue
    .line 64
    new-instance v0, Lcom/aonesoft/lib/AoneFixHeadImg$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/aonesoft/lib/AoneFixHeadImg$1;-><init>(IILjava/lang/String;)V

    invoke-static {v0}, Lorg/cocos2dx/plugin/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 109
    return-void
.end method

.method public static getImg(Landroid/widget/ImageView;Landroid/content/Intent;)V
    .locals 10
    .param p0, "iv"    # Landroid/widget/ImageView;
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 296
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 297
    .local v1, "selectedImage":Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v9

    .line 298
    .local v2, "filePathColumn":[Ljava/lang/String;
    sget-object v0, Lcom/aonesoft/lib/AoneFixHeadImg;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 300
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 301
    aget-object v0, v2, v9

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 302
    .local v6, "columnIndex":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 303
    .local v8, "picturePath":Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 305
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BitmapFactory.decodeFile(picturePath)=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 306
    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/aonesoft/lib/AoneFixHeadImg;->doCropPhoto(Landroid/graphics/Bitmap;)V

    .line 307
    return-void
.end method

.method private static getImg(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "imageView2"    # Landroid/widget/ImageView;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 287
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 288
    return-void
.end method

.method private static getSDCardPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 406
    const/4 v0, 0x0

    .line 408
    .local v0, "sdcardDir":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 409
    const-string v3, "mounted"

    .line 408
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 410
    .local v1, "sdcardExist":Z
    if-eqz v1, :cond_0

    .line 411
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 413
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    sput-object p0, Lcom/aonesoft/lib/AoneFixHeadImg;->mContext:Landroid/content/Context;

    .line 59
    new-instance v0, Lcom/aonesoft/lib/ImageUtils;

    invoke-direct {v0, p0}, Lcom/aonesoft/lib/ImageUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/aonesoft/lib/AoneFixHeadImg;->mImageUtils:Lcom/aonesoft/lib/ImageUtils;

    .line 61
    return-void
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 186
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RESULT_OK=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 187
    sget-object v1, Lcom/aonesoft/lib/AoneFixHeadImg;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const/4 v1, -0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_1

    .line 188
    sparse-switch p0, :sswitch_data_0

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 190
    :sswitch_0
    const-string v1, "AoneFixHeadImg"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onActivityResult-->CODE_CAMERA_REQUEST-->data:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-object v1, Lcom/aonesoft/lib/AoneFixHeadImg;->fileCropUri:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/aonesoft/lib/AoneFixHeadImg;->cropPhotoUri:Landroid/net/Uri;

    .line 192
    const-string v1, "AoneFixHeadImg"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onActivityResult-->CODE_CAMERA_REQUEST-->cropPhotoUri:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/aonesoft/lib/AoneFixHeadImg;->cropPhotoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    sget-object v1, Lcom/aonesoft/lib/AoneFixHeadImg;->cropPhotoUri:Landroid/net/Uri;

    sget-object v3, Lcom/aonesoft/lib/AoneFixHeadImg;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/aonesoft/lib/PhotoUtils;->getBitmapFromUri(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 196
    .local v11, "bitmapCrame":Landroid/graphics/Bitmap;
    sget-object v1, Lcom/aonesoft/lib/AoneFixHeadImg;->cropImagePath:Ljava/lang/String;

    invoke-static {v1, v11}, Lcom/aonesoft/lib/AoneFixHeadImg;->savePicture(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 197
    sget-object v1, Lcom/aonesoft/lib/AoneFixHeadImg;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    sget-object v2, Lcom/aonesoft/lib/AoneFixHeadImg;->imageUri:Landroid/net/Uri;

    sget-object v3, Lcom/aonesoft/lib/AoneFixHeadImg;->cropPhotoUri:Landroid/net/Uri;

    const/4 v4, 0x1

    const/4 v5, 0x1

    sget v6, Lcom/aonesoft/lib/AoneFixHeadImg;->mWidthPixel:I

    sget v7, Lcom/aonesoft/lib/AoneFixHeadImg;->mHeightPixel:I

    const/16 v8, 0xa2

    invoke-static/range {v1 .. v8}, Lcom/aonesoft/lib/PhotoUtils;->cropImageUri(Landroid/app/Activity;Landroid/net/Uri;Landroid/net/Uri;IIIII)V

    goto :goto_0

    .line 201
    .end local v11    # "bitmapCrame":Landroid/graphics/Bitmap;
    :sswitch_1
    const-string v1, "AoneFixHeadImg"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onActivityResult-->CODE_GALLERY_REQUEST-->data:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget-object v1, Lcom/aonesoft/lib/AoneFixHeadImg;->fileCropUri:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/aonesoft/lib/AoneFixHeadImg;->cropPhotoUri:Landroid/net/Uri;

    .line 203
    sget-object v1, Lcom/aonesoft/lib/AoneFixHeadImg;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/aonesoft/lib/PhotoUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 207
    .local v2, "newUri":Landroid/net/Uri;
    sget-object v1, Lcom/aonesoft/lib/AoneFixHeadImg;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    sget-object v3, Lcom/aonesoft/lib/AoneFixHeadImg;->cropPhotoUri:Landroid/net/Uri;

    const/4 v4, 0x1

    const/4 v5, 0x1

    sget v6, Lcom/aonesoft/lib/AoneFixHeadImg;->mWidthPixel:I

    sget v7, Lcom/aonesoft/lib/AoneFixHeadImg;->mHeightPixel:I

    const/16 v8, 0xa2

    invoke-static/range {v1 .. v8}, Lcom/aonesoft/lib/PhotoUtils;->cropImageUri(Landroid/app/Activity;Landroid/net/Uri;Landroid/net/Uri;IIIII)V

    goto/16 :goto_0

    .line 214
    .end local v2    # "newUri":Landroid/net/Uri;
    :sswitch_2
    const-string v1, "AoneFixHeadImg"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onActivityResult-->PHOTO_CAMERA_PICKED_WITH_DATA-->data:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 220
    :sswitch_3
    const-string v1, "AoneFixHeadImg"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onActivityResult-->CODE_RESULT_REQUEST-->data:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string v1, "AoneFixHeadImg"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onActivityResult-->CODE_RESULT_REQUEST-->cropPhotoUri:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/aonesoft/lib/AoneFixHeadImg;->cropPhotoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    sget-object v1, Lcom/aonesoft/lib/AoneFixHeadImg;->cropPhotoUri:Landroid/net/Uri;

    sget-object v3, Lcom/aonesoft/lib/AoneFixHeadImg;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/aonesoft/lib/PhotoUtils;->getBitmapFromUri(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 227
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    new-instance v13, Ljava/io/File;

    sget-object v1, Lcom/aonesoft/lib/AoneFixHeadImg;->cropImagePath:Ljava/lang/String;

    invoke-direct {v13, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    .local v13, "f":Ljava/io/File;
    :try_start_0
    new-instance v14, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v3, Lcom/aonesoft/lib/AoneFixHeadImg;->cropImagePath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v14, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 231
    .local v14, "out":Ljava/io/DataOutputStream;
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 232
    .local v9, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v10, v1, v3, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 233
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v9    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v14    # "out":Ljava/io/DataOutputStream;
    :goto_1
    sget-object v1, Lcom/aonesoft/lib/AoneFixHeadImg;->setHeadDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 234
    :catch_0
    move-exception v12

    .line 236
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 264
    .end local v10    # "bitmap":Landroid/graphics/Bitmap;
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "f":Ljava/io/File;
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "requestcode == "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 265
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "resultCode == "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 266
    const/16 v1, 0xa2

    if-eq p0, v1, :cond_2

    const/16 v1, 0xa1

    if-eq p0, v1, :cond_2

    .line 267
    const/16 v1, 0xa0

    if-eq p0, v1, :cond_2

    const/16 v1, 0xbce

    if-ne p0, v1, :cond_0

    .line 269
    :cond_2
    new-instance v1, Lcom/aonesoft/lib/AoneFixHeadImg$5;

    invoke-direct {v1}, Lcom/aonesoft/lib/AoneFixHeadImg$5;-><init>()V

    invoke-static {v1}, Lorg/cocos2dx/plugin/PluginWrapper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 276
    sget-object v1, Lcom/aonesoft/lib/AoneFixHeadImg;->setHeadDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 277
    sget-object v1, Lcom/aonesoft/lib/AoneFixHeadImg;->setHeadDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 188
    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_1
        0xa1 -> :sswitch_0
        0xa2 -> :sswitch_3
        0xbce -> :sswitch_2
    .end sparse-switch
.end method

.method public static photo()V
    .locals 3

    .prologue
    .line 163
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/aonesoft/lib/AoneFixHeadImg;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const/16 v2, 0xa0

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 165
    return-void
.end method

.method private static savePicture(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 12
    .param p0, "givePath"    # Ljava/lang/String;
    .param p1, "obmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 335
    const-string v8, "debug"

    const-string v9, "SavePicture 1"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-string v8, "debug"

    const-string v9, "SavePicture 2"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const-string v8, "debug"

    const-string v9, "SavePicture 3"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const-string v2, ""

    .line 340
    .local v2, "filePath":Ljava/lang/String;
    const-string v7, ""

    .line 341
    .local v7, "savePath":Ljava/lang/String;
    const-string v3, ""

    .line 342
    .local v3, "file_last_name":Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 343
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_4

    .line 344
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aonesoft/lib/AoneFixHeadImg;->getSDCardPath()Ljava/lang/String;

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

    .line 345
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

    .line 374
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

    .line 375
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 376
    .local v6, "path":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 378
    const-string v8, "debug"

    const-string v9, "path is not exists"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 381
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 382
    const-string v8, "debug"

    const-string v9, "file create new "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 385
    :cond_2
    const/4 v4, 0x0

    .line 386
    .local v4, "fos":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 387
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    if-eqz v4, :cond_3

    .line 388
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {p1, v8, v9, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 389
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 390
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 391
    const-string v8, "debug"

    const-string v9, "save ok"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "path":Ljava/io/File;
    :cond_3
    :goto_1
    return-void

    .line 347
    :cond_4
    const-string v8, ".png"

    invoke-virtual {p0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 348
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

    .line 349
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 350
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aonesoft/lib/AoneFixHeadImg;->getSDCardPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 365
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

    .line 367
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 368
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 369
    goto/16 :goto_0

    .line 352
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aonesoft/lib/AoneFixHeadImg;->getSDCardPath()Ljava/lang/String;

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

    .line 354
    goto :goto_2

    .line 355
    :cond_6
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 356
    .local v5, "index":I
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 357
    const/4 v8, 0x0

    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 358
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 359
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aonesoft/lib/AoneFixHeadImg;->getSDCardPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 360
    goto :goto_2

    .line 361
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aonesoft/lib/AoneFixHeadImg;->getSDCardPath()Ljava/lang/String;

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

    .line 370
    .end local v5    # "index":I
    :cond_8
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

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public static setImageView(Landroid/widget/ImageView;)V
    .locals 0
    .param p0, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 292
    sput-object p0, Lcom/aonesoft/lib/AoneFixHeadImg;->mImageView:Landroid/widget/ImageView;

    .line 293
    return-void
.end method
