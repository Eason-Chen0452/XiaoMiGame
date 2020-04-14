.class public Lcom/aonesoft/lib/AoneQuickRegisterUtils;
.super Ljava/lang/Object;
.source "AoneQuickRegisterUtils.java"


# static fields
.field private static final SDK_VERSION:I = 0x13

.field private static account_password:[Ljava/lang/String;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/aonesoft/lib/AoneQuickRegisterUtils;->account_password:[Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccount()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/aonesoft/lib/AoneQuickRegisterUtils;->account_password:[Ljava/lang/String;

    return-object v0
.end method

.method public static getSDPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 147
    const/4 v1, 0x0

    .line 148
    .local v1, "sdDir":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 149
    .local v0, "sdCardExist":Z
    if-eqz v0, :cond_0

    .line 150
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 152
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    sput-object p0, Lcom/aonesoft/lib/AoneQuickRegisterUtils;->mContext:Landroid/content/Context;

    .line 165
    return-void
.end method

.method private static makeBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 39
    .param p0, "userName"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 31
    sget-object v35, Lcom/aonesoft/lib/AoneQuickRegisterUtils;->mContext:Landroid/content/Context;

    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    sget-object v36, Lcom/aonesoft/lib/AoneQuickRegisterUtils;->mContext:Landroid/content/Context;

    const-string v37, "drawable"

    const-string v38, "aonesdk_background"

    invoke-static/range {v36 .. v38}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v36

    invoke-static/range {v35 .. v36}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 33
    .local v11, "background":Landroid/graphics/Bitmap;
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v34

    .line 34
    .local v34, "width":I
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .line 37
    .local v18, "height":I
    sget-object v35, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v36, Ljava/lang/StringBuilder;

    const-string v37, "width="

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 38
    sget-object v35, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v36, Ljava/lang/StringBuilder;

    const-string v37, "height="

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 39
    sget-object v35, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v34

    move/from16 v1, v18

    move-object/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 41
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 42
    .local v13, "canvas":Landroid/graphics/Canvas;
    new-instance v23, Landroid/graphics/Paint;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Paint;-><init>()V

    .line 43
    .local v23, "paint":Landroid/graphics/Paint;
    const/16 v35, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    const-string v17, "\u7039\u5b29\u7d8b"

    .line 48
    .local v17, "familyName":Ljava/lang/String;
    const/16 v33, 0x1a

    .line 49
    .local v33, "size":I
    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v23

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 52
    const/16 v35, 0x0

    const/16 v36, 0x0

    move/from16 v0, v35

    move/from16 v1, v36

    move-object/from16 v2, v23

    invoke-virtual {v13, v11, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 53
    new-instance v32, Landroid/graphics/Rect;

    invoke-direct/range {v32 .. v32}, Landroid/graphics/Rect;-><init>()V

    .line 54
    .local v32, "rect":Landroid/graphics/Rect;
    sget-object v35, Lcom/aonesoft/lib/AoneQuickRegisterUtils;->mContext:Landroid/content/Context;

    sget-object v36, Lcom/aonesoft/lib/AoneQuickRegisterUtils;->mContext:Landroid/content/Context;

    const-string v37, "string"

    const-string v38, "aonesdk_qRegisterAccount"

    invoke-static/range {v36 .. v38}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 55
    .local v29, "qRegisterAccount":Ljava/lang/String;
    const/16 v35, 0x0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v36

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move/from16 v2, v35

    move/from16 v3, v36

    move-object/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 56
    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Rect;->width()I

    move-result v31

    .line 57
    .local v31, "qRegisterAccount_w":I
    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Rect;->height()I

    move-result v30

    .line 58
    .local v30, "qRegisterAccount_h":I
    div-int/lit8 v35, v34, 0x2

    div-int/lit8 v36, v31, 0x2

    sub-int v35, v35, v36

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    mul-int/lit8 v36, v18, 0x4

    div-int/lit8 v36, v36, 0x5

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move-object/from16 v0, v29

    move/from16 v1, v35

    move/from16 v2, v36

    move-object/from16 v3, v23

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 61
    sget-object v35, Lcom/aonesoft/lib/AoneQuickRegisterUtils;->mContext:Landroid/content/Context;

    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    sget-object v36, Lcom/aonesoft/lib/AoneQuickRegisterUtils;->mContext:Landroid/content/Context;

    const-string v37, "drawable"

    const-string v38, "aonesdk_light_account"

    invoke-static/range {v36 .. v38}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v36

    invoke-static/range {v35 .. v36}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 62
    .local v6, "account_logo":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 63
    .local v8, "account_logo_width":I
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 64
    .local v7, "account_logo_height":I
    div-int/lit8 v35, v34, 0x2

    mul-int/lit8 v36, v8, 0x2

    sub-int v35, v35, v36

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    mul-int/lit8 v36, v18, 0x2

    div-int/lit8 v36, v36, 0x5

    sub-int v36, v36, v7

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    move-object/from16 v2, v23

    invoke-virtual {v13, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 65
    sget-object v35, Lcom/aonesoft/lib/AoneQuickRegisterUtils;->mContext:Landroid/content/Context;

    sget-object v36, Lcom/aonesoft/lib/AoneQuickRegisterUtils;->mContext:Landroid/content/Context;

    const-string v37, "string"

    const-string v38, "aonesdk_account"

    invoke-static/range {v36 .. v38}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 66
    .local v9, "account_text":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    .line 67
    .local v5, "acc_len":I
    const/16 v35, 0x0

    add-int/lit8 v36, v5, -0x1

    move/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 68
    .local v10, "account_text_show":Ljava/lang/String;
    div-int/lit8 v35, v34, 0x2

    div-int/lit8 v36, v8, 0x2

    sub-int v35, v35, v36

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    mul-int/lit8 v36, v18, 0x2

    div-int/lit8 v36, v36, 0x5

    add-int/lit8 v36, v36, -0x5

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    move-object/from16 v2, v23

    invoke-virtual {v13, v10, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 69
    const/high16 v35, -0x1000000

    move-object/from16 v0, v23

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    sget-object v35, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v36, Ljava/lang/StringBuilder;

    const-string v37, "userName="

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    sget-object v35, Lcom/aonesoft/lib/AoneQuickRegisterUtils;->mContext:Landroid/content/Context;

    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    sget-object v36, Lcom/aonesoft/lib/AoneQuickRegisterUtils;->mContext:Landroid/content/Context;

    const-string v37, "drawable"

    const-string v38, "aonesdk_edit"

    invoke-static/range {v36 .. v38}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v36

    invoke-static/range {v35 .. v36}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 75
    .local v14, "edit_logo":Landroid/graphics/Bitmap;
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 76
    .local v16, "edit_logo_width":I
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 77
    .local v15, "edit_logo_height":I
    div-int/lit8 v35, v34, 0x2

    div-int/lit8 v36, v16, 0x2

    sub-int v35, v35, v36

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    mul-int/lit8 v36, v18, 0x2

    div-int/lit8 v36, v36, 0x5

    add-int v36, v36, v7

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    move-object/from16 v2, v23

    invoke-virtual {v13, v14, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 78
    div-int/lit8 v35, v34, 0x2

    div-int/lit8 v36, v16, 0x2

    sub-int v35, v35, v36

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    mul-int/lit8 v36, v18, 0x3

    div-int/lit8 v36, v36, 0x5

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    move-object/from16 v2, v23

    invoke-virtual {v13, v14, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 79
    div-int/lit8 v35, v34, 0x2

    add-int/lit8 v35, v35, -0x3c

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    mul-int/lit8 v36, v18, 0x2

    div-int/lit8 v36, v36, 0x5

    mul-int/lit8 v37, v7, 0x2

    add-int v36, v36, v37

    add-int/lit8 v36, v36, 0xa

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move-object/from16 v0, p0

    move/from16 v1, v35

    move/from16 v2, v36

    move-object/from16 v3, v23

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 80
    const/high16 v35, -0x1000000

    move-object/from16 v0, v23

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    sget-object v35, Lcom/aonesoft/lib/AoneQuickRegisterUtils;->mContext:Landroid/content/Context;

    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    sget-object v36, Lcom/aonesoft/lib/AoneQuickRegisterUtils;->mContext:Landroid/content/Context;

    const-string v37, "drawable"

    const-string v38, "aonesdk_light_password"

    invoke-static/range {v36 .. v38}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v36

    invoke-static/range {v35 .. v36}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 84
    .local v24, "password_logo":Landroid/graphics/Bitmap;
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    .line 85
    .local v26, "password_logo_width":I
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    .line 86
    .local v25, "password_logo_height":I
    div-int/lit8 v35, v34, 0x2

    mul-int/lit8 v36, v26, 0x2

    sub-int v35, v35, v36

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    mul-int/lit8 v36, v18, 0x3

    div-int/lit8 v36, v36, 0x5

    sub-int v36, v36, v15

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move-object/from16 v0, v24

    move/from16 v1, v35

    move/from16 v2, v36

    move-object/from16 v3, v23

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 87
    const/16 v35, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    sget-object v35, Lcom/aonesoft/lib/AoneQuickRegisterUtils;->mContext:Landroid/content/Context;

    sget-object v36, Lcom/aonesoft/lib/AoneQuickRegisterUtils;->mContext:Landroid/content/Context;

    const-string v37, "string"

    const-string v38, "aonesdk_quickregisterpassword"

    invoke-static/range {v36 .. v38}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    .line 89
    .local v27, "password_text":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v19

    .line 90
    .local v19, "len":I
    const/16 v35, 0x0

    add-int/lit8 v36, v19, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    .line 91
    .local v28, "password_text_show":Ljava/lang/String;
    div-int/lit8 v35, v34, 0x2

    sub-int v35, v35, v26

    add-int/lit8 v35, v35, 0xa

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    mul-int/lit8 v36, v18, 0x3

    div-int/lit8 v36, v36, 0x5

    sub-int v36, v36, v15

    add-int v36, v36, v25

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move-object/from16 v0, v28

    move/from16 v1, v35

    move/from16 v2, v36

    move-object/from16 v3, v23

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 92
    const/high16 v35, -0x1000000

    move-object/from16 v0, v23

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    div-int/lit8 v35, v34, 0x2

    add-int/lit8 v35, v35, -0x3a

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    mul-int/lit8 v36, v18, 0x3

    div-int/lit8 v36, v36, 0x5

    add-int v36, v36, v25

    add-int/lit8 v36, v36, 0x5

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move-object/from16 v0, p1

    move/from16 v1, v35

    move/from16 v2, v36

    move-object/from16 v3, v23

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 97
    invoke-static {}, Lcom/aonesoft/lib/AoneConfigManager;->getIsSmartspace()Z

    move-result v35

    if-eqz v35, :cond_0

    .line 98
    sget-object v35, Lcom/aonesoft/lib/AoneQuickRegisterUtils;->mContext:Landroid/content/Context;

    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    sget-object v36, Lcom/aonesoft/lib/AoneQuickRegisterUtils;->mContext:Landroid/content/Context;

    const-string v37, "drawable"

    const-string v38, "aonesdk_smartspace_logo"

    invoke-static/range {v36 .. v38}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v36

    invoke-static/range {v35 .. v36}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 102
    .local v20, "logo":Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    .line 103
    .local v22, "logo_width":I
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    .line 104
    .local v21, "logo_height":I
    div-int/lit8 v35, v34, 0x2

    div-int/lit8 v36, v22, 0x2

    sub-int v35, v35, v36

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    div-int/lit8 v36, v18, 0x5

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move-object/from16 v0, v20

    move/from16 v1, v35

    move/from16 v2, v36

    move-object/from16 v3, v23

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 105
    invoke-static/range {v20 .. v20}, Lcom/aonesoft/lib/AoneQuickRegisterUtils;->recyle(Landroid/graphics/Bitmap;)V

    .line 106
    invoke-static {v6}, Lcom/aonesoft/lib/AoneQuickRegisterUtils;->recyle(Landroid/graphics/Bitmap;)V

    .line 107
    invoke-static {v14}, Lcom/aonesoft/lib/AoneQuickRegisterUtils;->recyle(Landroid/graphics/Bitmap;)V

    .line 108
    invoke-static/range {v24 .. v24}, Lcom/aonesoft/lib/AoneQuickRegisterUtils;->recyle(Landroid/graphics/Bitmap;)V

    .line 109
    return-object v12

    .line 100
    .end local v20    # "logo":Landroid/graphics/Bitmap;
    .end local v21    # "logo_height":I
    .end local v22    # "logo_width":I
    :cond_0
    sget-object v35, Lcom/aonesoft/lib/AoneQuickRegisterUtils;->mContext:Landroid/content/Context;

    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    sget-object v36, Lcom/aonesoft/lib/AoneQuickRegisterUtils;->mContext:Landroid/content/Context;

    const-string v37, "drawable"

    const-string v38, "aonesdk_logo"

    invoke-static/range {v36 .. v38}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v36

    invoke-static/range {v35 .. v36}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v20

    .restart local v20    # "logo":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private static recyle(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 168
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 170
    const/4 p0, 0x0

    .line 172
    :cond_0
    return-void
.end method

.method public static saveStrsToPhotoAlbum(Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p0, "userName"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 113
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "hhh -------------- save photo"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 116
    .local v5, "date":Ljava/util/Date;
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lcom/aonesoft/lib/AoneQuickRegisterUtils;->getSDPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v6, "dirFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_0

    .line 119
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "hhh -------------- create dir"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 123
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aonesoft/lib/AoneQuickRegisterUtils;->getSDPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/aonesdk_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".png"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 124
    .local v8, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    .local v1, "bitmapFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 126
    .local v2, "bitmapWtriter":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 128
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 129
    .end local v2    # "bitmapWtriter":Ljava/io/FileOutputStream;
    .local v3, "bitmapWtriter":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static/range {p0 .. p1}, Lcom/aonesoft/lib/AoneQuickRegisterUtils;->makeBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x5a

    invoke-virtual {v0, v10, v11, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 131
    sget-object v10, Lcom/aonesoft/lib/AoneQuickRegisterUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "username"

    const-string v12, "quickregister"

    invoke-static {v10, v0, v11, v12}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x13

    if-lt v10, v11, :cond_1

    .line 133
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v9, "mediaScanIntent":Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 135
    .local v4, "contentUri":Landroid/net/Uri;
    invoke-virtual {v9, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 136
    sget-object v10, Lcom/aonesoft/lib/AoneQuickRegisterUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 140
    .end local v4    # "contentUri":Landroid/net/Uri;
    .end local v9    # "mediaScanIntent":Landroid/content/Intent;
    :goto_0
    invoke-static {v0}, Lcom/aonesoft/lib/AoneQuickRegisterUtils;->recyle(Landroid/graphics/Bitmap;)V

    move-object v2, v3

    .line 144
    .end local v3    # "bitmapWtriter":Ljava/io/FileOutputStream;
    .restart local v2    # "bitmapWtriter":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 138
    .end local v2    # "bitmapWtriter":Ljava/io/FileOutputStream;
    .restart local v3    # "bitmapWtriter":Ljava/io/FileOutputStream;
    :cond_1
    sget-object v10, Lcom/aonesoft/lib/AoneQuickRegisterUtils;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.MEDIA_MOUNTED"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "file://"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v10, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v7

    move-object v2, v3

    .line 142
    .end local v3    # "bitmapWtriter":Ljava/io/FileOutputStream;
    .restart local v2    # "bitmapWtriter":Ljava/io/FileOutputStream;
    .local v7, "e":Ljava/io/FileNotFoundException;
    :goto_2
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 141
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v7

    goto :goto_2
.end method

.method public static setAccount([Ljava/lang/String;)V
    .locals 0
    .param p0, "str"    # [Ljava/lang/String;

    .prologue
    .line 156
    sput-object p0, Lcom/aonesoft/lib/AoneQuickRegisterUtils;->account_password:[Ljava/lang/String;

    .line 157
    return-void
.end method
