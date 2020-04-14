.class public Lcom/aonesoft/lib/AoneOpenUrl;
.super Landroid/app/Activity;
.source "AoneOpenUrl.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# static fields
.field private static s_activity:Landroid/app/Activity;


# instance fields
.field private final FILE_SELECTED:I

.field private TAG:Ljava/lang/String;

.field private mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public mUploadMessages:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mUrl:Ljava/lang/String;

.field private mWebview:Landroid/webkit/WebView;

.field private wcc:Landroid/webkit/WebChromeClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    const-string v0, "AoneOpenUrl"

    iput-object v0, p0, Lcom/aonesoft/lib/AoneOpenUrl;->TAG:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/aonesoft/lib/AoneOpenUrl;->mUrl:Ljava/lang/String;

    .line 48
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/aonesoft/lib/AoneOpenUrl;->FILE_SELECTED:I

    .line 123
    new-instance v0, Lcom/aonesoft/lib/AoneOpenUrl$1;

    invoke-direct {v0, p0}, Lcom/aonesoft/lib/AoneOpenUrl$1;-><init>(Lcom/aonesoft/lib/AoneOpenUrl;)V

    iput-object v0, p0, Lcom/aonesoft/lib/AoneOpenUrl;->wcc:Landroid/webkit/WebChromeClient;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/aonesoft/lib/AoneOpenUrl;)Landroid/webkit/ValueCallback;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/aonesoft/lib/AoneOpenUrl;->mUploadMessage:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method static synthetic access$1(Lcom/aonesoft/lib/AoneOpenUrl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/aonesoft/lib/AoneOpenUrl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/aonesoft/lib/AoneOpenUrl;Landroid/webkit/ValueCallback;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/aonesoft/lib/AoneOpenUrl;->mUploadMessage:Landroid/webkit/ValueCallback;

    return-void
.end method

.method static synthetic access$3()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/aonesoft/lib/AoneOpenUrl;->s_activity:Landroid/app/Activity;

    return-object v0
.end method

.method private getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 203
    const/4 v8, 0x0

    .line 204
    .local v8, "cursor":Landroid/database/Cursor;
    const-string v6, "_data"

    .line 205
    .local v6, "column":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 208
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 209
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    const-string v0, "_data"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 211
    .local v7, "column_index":I
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 214
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 216
    .end local v7    # "column_index":I
    :cond_0
    :goto_0
    return-object v0

    .line 213
    :catchall_0
    move-exception v0

    .line 214
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 215
    :cond_1
    throw v0

    .line 214
    :cond_2
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v9

    .line 216
    goto :goto_0
.end method

.method private getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 221
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x13

    if-lt v11, v12, :cond_1

    move v3, v9

    .line 224
    .local v3, "isKitKat":Z
    :goto_0
    if-eqz v3, :cond_7

    invoke-static {p1, p2}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 226
    invoke-direct {p0, p2}, Lcom/aonesoft/lib/AoneOpenUrl;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 227
    invoke-static {p2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "docId":Ljava/lang/String;
    const-string v11, ":"

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 229
    .local v6, "split":[Ljava/lang/String;
    aget-object v7, v6, v10

    .line 231
    .local v7, "type":Ljava/lang/String;
    const-string v10, "primary"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 232
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 275
    .end local v1    # "docId":Ljava/lang/String;
    .end local v6    # "split":[Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v8

    .end local v3    # "isKitKat":Z
    :cond_1
    move v3, v10

    .line 221
    goto :goto_0

    .line 238
    .restart local v3    # "isKitKat":Z
    :cond_2
    invoke-direct {p0, p2}, Lcom/aonesoft/lib/AoneOpenUrl;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 240
    invoke-static {p2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "id":Ljava/lang/String;
    const-string v9, "content://downloads/public_downloads"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 243
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-direct {p0, p1, v0, v8, v8}, Lcom/aonesoft/lib/AoneOpenUrl;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 246
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v2    # "id":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p2}, Lcom/aonesoft/lib/AoneOpenUrl;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 247
    invoke-static {p2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 248
    .restart local v1    # "docId":Ljava/lang/String;
    const-string v8, ":"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 249
    .restart local v6    # "split":[Ljava/lang/String;
    aget-object v7, v6, v10

    .line 251
    .restart local v7    # "type":Ljava/lang/String;
    const/4 v0, 0x0

    .line 252
    .restart local v0    # "contentUri":Landroid/net/Uri;
    const-string v8, "image"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 253
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 260
    :cond_4
    :goto_2
    const-string v4, "_id=?"

    .line 261
    .local v4, "selection":Ljava/lang/String;
    new-array v5, v9, [Ljava/lang/String;

    aget-object v8, v6, v9

    aput-object v8, v5, v10

    .line 263
    .local v5, "selectionArgs":[Ljava/lang/String;
    const-string v8, "_id=?"

    invoke-direct {p0, p1, v0, v8, v5}, Lcom/aonesoft/lib/AoneOpenUrl;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 254
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    :cond_5
    const-string v8, "video"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 255
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 256
    goto :goto_2

    :cond_6
    const-string v8, "audio"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 257
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 267
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "docId":Ljava/lang/String;
    .end local v6    # "split":[Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :cond_7
    const-string v9, "content"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 268
    invoke-direct {p0, p1, p2, v8, v8}, Lcom/aonesoft/lib/AoneOpenUrl;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 271
    :cond_8
    const-string v9, "file"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 272
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1
.end method

.method private isDownloadsDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 190
    const-string v0, "com.android.providers.downloads.documents"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isExternalStorageDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 181
    const-string v0, "com.android.externalstorage.documents"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isMediaDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 199
    const-string v0, "com.android.providers.media.documents"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadUrl()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 77
    sget-object v1, Lcom/aonesoft/lib/AoneOpenUrl;->s_activity:Landroid/app/Activity;

    sget-object v2, Lcom/aonesoft/lib/AoneOpenUrl;->s_activity:Landroid/app/Activity;

    const-string v3, "id"

    const-string v4, "urlopen_web"

    invoke-static {v2, v3, v4}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/aonesoft/lib/AoneOpenUrl;->mWebview:Landroid/webkit/WebView;

    .line 78
    iget-object v1, p0, Lcom/aonesoft/lib/AoneOpenUrl;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 79
    iget-object v1, p0, Lcom/aonesoft/lib/AoneOpenUrl;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 80
    iget-object v1, p0, Lcom/aonesoft/lib/AoneOpenUrl;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 81
    iget-object v1, p0, Lcom/aonesoft/lib/AoneOpenUrl;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 82
    iget-object v1, p0, Lcom/aonesoft/lib/AoneOpenUrl;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 83
    iget-object v1, p0, Lcom/aonesoft/lib/AoneOpenUrl;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 84
    iget-object v1, p0, Lcom/aonesoft/lib/AoneOpenUrl;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 85
    iget-object v1, p0, Lcom/aonesoft/lib/AoneOpenUrl;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 86
    iget-object v1, p0, Lcom/aonesoft/lib/AoneOpenUrl;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    .line 88
    new-instance v0, Lcom/aonesoft/lib/AoneOpenUrl$3;

    invoke-direct {v0, p0}, Lcom/aonesoft/lib/AoneOpenUrl$3;-><init>(Lcom/aonesoft/lib/AoneOpenUrl;)V

    .line 117
    .local v0, "wvc":Landroid/webkit/WebViewClient;
    iget-object v1, p0, Lcom/aonesoft/lib/AoneOpenUrl;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 118
    iget-object v1, p0, Lcom/aonesoft/lib/AoneOpenUrl;->mWebview:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/aonesoft/lib/AoneOpenUrl;->wcc:Landroid/webkit/WebChromeClient;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 120
    iget-object v1, p0, Lcom/aonesoft/lib/AoneOpenUrl;->mWebview:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/aonesoft/lib/AoneOpenUrl;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 121
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 280
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 282
    iget-object v4, p0, Lcom/aonesoft/lib/AoneOpenUrl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "hhh onActivityResult1:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " resultCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/16 v4, 0x3e8

    if-ne p1, v4, :cond_4

    .line 285
    iget-object v4, p0, Lcom/aonesoft/lib/AoneOpenUrl;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz v4, :cond_1

    .line 286
    if-eqz p3, :cond_0

    if-eq p2, v7, :cond_5

    :cond_0
    move-object v1, v3

    .line 288
    .local v1, "result":Landroid/net/Uri;
    :goto_0
    iget-object v4, p0, Lcom/aonesoft/lib/AoneOpenUrl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "hhh onActivityResult2:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    if-eqz v1, :cond_6

    .line 291
    sget-object v4, Lcom/aonesoft/lib/AoneOpenUrl;->s_activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lcom/aonesoft/lib/AoneOpenUrl;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 293
    .local v2, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/aonesoft/lib/AoneOpenUrl;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {v4, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 299
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "result":Landroid/net/Uri;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/aonesoft/lib/AoneOpenUrl;->mUploadMessages:Landroid/webkit/ValueCallback;

    if-eqz v4, :cond_3

    .line 300
    if-eqz p3, :cond_2

    if-eq p2, v7, :cond_7

    :cond_2
    move-object v1, v3

    .line 302
    .restart local v1    # "result":Landroid/net/Uri;
    :goto_2
    iget-object v4, p0, Lcom/aonesoft/lib/AoneOpenUrl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "hhh onActivityResult3:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    if-eqz v1, :cond_8

    .line 305
    sget-object v4, Lcom/aonesoft/lib/AoneOpenUrl;->s_activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lcom/aonesoft/lib/AoneOpenUrl;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .restart local v0    # "path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 308
    .restart local v2    # "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/aonesoft/lib/AoneOpenUrl;->mUploadMessages:Landroid/webkit/ValueCallback;

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/net/Uri;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-interface {v4, v5}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 314
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "result":Landroid/net/Uri;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_3
    :goto_3
    iput-object v3, p0, Lcom/aonesoft/lib/AoneOpenUrl;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 315
    iput-object v3, p0, Lcom/aonesoft/lib/AoneOpenUrl;->mUploadMessages:Landroid/webkit/ValueCallback;

    .line 317
    :cond_4
    return-void

    .line 286
    :cond_5
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_0

    .line 295
    .restart local v1    # "result":Landroid/net/Uri;
    :cond_6
    iget-object v4, p0, Lcom/aonesoft/lib/AoneOpenUrl;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {v4, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 300
    .end local v1    # "result":Landroid/net/Uri;
    :cond_7
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    goto :goto_2

    .line 310
    .restart local v1    # "result":Landroid/net/Uri;
    :cond_8
    iget-object v4, p0, Lcom/aonesoft/lib/AoneOpenUrl;->mUploadMessages:Landroid/webkit/ValueCallback;

    invoke-interface {v4, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/aonesoft/lib/AoneOpenUrl;->requestWindowFeature(I)Z

    .line 55
    invoke-virtual {p0}, Lcom/aonesoft/lib/AoneOpenUrl;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 58
    const-string v1, "layout"

    const-string v2, "activity_urlopen"

    invoke-static {p0, v1, v2}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/aonesoft/lib/AoneOpenUrl;->setContentView(I)V

    .line 60
    sput-object p0, Lcom/aonesoft/lib/AoneOpenUrl;->s_activity:Landroid/app/Activity;

    .line 62
    invoke-virtual {p0}, Lcom/aonesoft/lib/AoneOpenUrl;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aonesoft/lib/AoneOpenUrl;->mUrl:Ljava/lang/String;

    .line 64
    const-string v1, "id"

    const-string v2, "back_button"

    invoke-static {p0, v1, v2}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/aonesoft/lib/AoneOpenUrl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 65
    .local v0, "closeBtn":Landroid/widget/ImageButton;
    new-instance v1, Lcom/aonesoft/lib/AoneOpenUrl$2;

    invoke-direct {v1, p0}, Lcom/aonesoft/lib/AoneOpenUrl$2;-><init>(Lcom/aonesoft/lib/AoneOpenUrl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-direct {p0}, Lcom/aonesoft/lib/AoneOpenUrl;->loadUrl()V

    .line 74
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/aonesoft/lib/AoneOpenUrl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onKeyDown:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aonesoft/lib/AoneOpenUrl;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/aonesoft/lib/AoneOpenUrl;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/aonesoft/lib/AoneOpenUrl;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 327
    const/4 v0, 0x0

    .line 331
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
