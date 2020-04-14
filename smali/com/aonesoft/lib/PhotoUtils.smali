.class public Lcom/aonesoft/lib/PhotoUtils;
.super Ljava/lang/Object;
.source "PhotoUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotoUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cropImageUri(Landroid/app/Activity;Landroid/net/Uri;Landroid/net/Uri;IIIII)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "orgUri"    # Landroid/net/Uri;
    .param p2, "desUri"    # Landroid/net/Uri;
    .param p3, "aspectX"    # I
    .param p4, "aspectY"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "requestCode"    # I

    .prologue
    .line 61
    new-instance v0, Lcom/aonesoft/lib/PhotoUtils$1;

    move v1, p5

    move v2, p6

    move-object v3, p1

    move v4, p3

    move v5, p4

    move-object v6, p2

    move-object v7, p0

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/aonesoft/lib/PhotoUtils$1;-><init>(IILandroid/net/Uri;IILandroid/net/Uri;Landroid/app/Activity;I)V

    invoke-static {v0}, Lorg/cocos2dx/plugin/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 87
    return-void
.end method

.method public static getBitmapFromUri(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 98
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p0}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 180
    const/4 v8, 0x0

    .line 181
    .local v8, "cursor":Landroid/database/Cursor;
    const-string v6, "_data"

    .line 182
    .local v6, "column":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 184
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 185
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    const-string v0, "_data"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 187
    .local v7, "column_index":I
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 190
    if-eqz v8, :cond_0

    .line 191
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 193
    .end local v7    # "column_index":I
    :cond_0
    :goto_0
    return-object v0

    .line 189
    :catchall_0
    move-exception v0

    .line 190
    if-eqz v8, :cond_1

    .line 191
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 192
    :cond_1
    throw v0

    .line 190
    :cond_2
    if-eqz v8, :cond_3

    .line 191
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v9

    .line 193
    goto :goto_0
.end method

.method public static getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 114
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x13

    if-lt v12, v13, :cond_0

    move v3, v9

    .line 115
    .local v3, "isKitKat":Z
    :goto_0
    const-string v4, "file:///"

    .line 117
    .local v4, "pathHead":Ljava/lang/String;
    if-eqz v3, :cond_6

    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 119
    invoke-static {p1}, Lcom/aonesoft/lib/PhotoUtils;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 120
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "docId":Ljava/lang/String;
    const-string v12, ":"

    invoke-virtual {v1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 122
    .local v7, "split":[Ljava/lang/String;
    aget-object v8, v7, v10

    .line 123
    .local v8, "type":Ljava/lang/String;
    const-string v10, "primary"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 124
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v9, v7, v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 165
    .end local v1    # "docId":Ljava/lang/String;
    .end local v7    # "split":[Ljava/lang/String;
    .end local v8    # "type":Ljava/lang/String;
    :goto_1
    return-object v9

    .end local v3    # "isKitKat":Z
    .end local v4    # "pathHead":Ljava/lang/String;
    :cond_0
    move v3, v10

    .line 114
    goto :goto_0

    .line 128
    .restart local v3    # "isKitKat":Z
    .restart local v4    # "pathHead":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Lcom/aonesoft/lib/PhotoUtils;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 130
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "id":Ljava/lang/String;
    const-string v9, "content://downloads/public_downloads"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v9, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 134
    .local v0, "contentUri":Landroid/net/Uri;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v11, v11}, Lcom/aonesoft/lib/PhotoUtils;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 137
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v2    # "id":Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Lcom/aonesoft/lib/PhotoUtils;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 138
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .restart local v1    # "docId":Ljava/lang/String;
    const-string v11, ":"

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 140
    .restart local v7    # "split":[Ljava/lang/String;
    aget-object v8, v7, v10

    .line 142
    .restart local v8    # "type":Ljava/lang/String;
    const/4 v0, 0x0

    .line 143
    .restart local v0    # "contentUri":Landroid/net/Uri;
    const-string v11, "image"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 144
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 151
    :cond_3
    :goto_2
    const-string v5, "_id=?"

    .line 152
    .local v5, "selection":Ljava/lang/String;
    new-array v6, v9, [Ljava/lang/String;

    aget-object v9, v7, v9

    aput-object v9, v6, v10

    .line 154
    .local v6, "selectionArgs":[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "_id=?"

    invoke-static {p0, v0, v10, v6}, Lcom/aonesoft/lib/PhotoUtils;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 145
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    :cond_4
    const-string v11, "video"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 146
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 147
    goto :goto_2

    :cond_5
    const-string v11, "audio"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 148
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 158
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "docId":Ljava/lang/String;
    .end local v7    # "split":[Ljava/lang/String;
    .end local v8    # "type":Ljava/lang/String;
    :cond_6
    const-string v9, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 159
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v11, v11}, Lcom/aonesoft/lib/PhotoUtils;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 162
    :cond_7
    const-string v9, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 163
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    :cond_8
    move-object v9, v11

    .line 165
    goto/16 :goto_1
.end method

.method private static isDownloadsDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 209
    const-string v0, "com.android.providers.downloads.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isExternalStorageDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 201
    const-string v0, "com.android.externalstorage.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isMediaDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 217
    const-string v0, "com.android.providers.media.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static openPic(Landroid/app/Activity;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, "photoPickerIntent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 48
    return-void
.end method

.method public static takePicture(Landroid/app/Activity;Landroid/net/Uri;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "imageUri"    # Landroid/net/Uri;
    .param p2, "requestCode"    # I

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 34
    .local v0, "intentCamera":Landroid/content/Intent;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const-string v1, "output"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 37
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 38
    return-void
.end method
