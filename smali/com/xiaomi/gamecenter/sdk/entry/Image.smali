.class public Lcom/xiaomi/gamecenter/sdk/entry/Image;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;,
        Lcom/xiaomi/gamecenter/sdk/entry/Image$ImageProcesser;,
        Lcom/xiaomi/gamecenter/sdk/entry/Image$a;
    }
.end annotation


# static fields
.field private static bitmap_cache:Lcom/xiaomi/gamecenter/sdk/entry/Image$a;

.field private static image_cache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/gamecenter/sdk/entry/Image;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCdnDomain:Ljava/lang/String;

.field private mFormat:Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;

.field private mIsHD:Z

.field private mLocalName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mParameters:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mProcesser:Lcom/xiaomi/gamecenter/sdk/entry/Image$ImageProcesser;

.field private mResType:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mIsHD:Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcn/com/wali/basetool/utils/MD5;->c([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mLocalName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static clean()V
    .locals 7

    const/4 v3, 0x0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->bitmap_cache:Lcom/xiaomi/gamecenter/sdk/entry/Image$a;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/entry/Image$a;->a(Lcom/xiaomi/gamecenter/sdk/entry/Image$a;)Landroid/support/v4/util/LruCache;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    mul-int/2addr v1, v6

    add-int/2addr v1, v2

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v1

    goto :goto_0

    :cond_0
    shr-int/lit8 v2, v2, 0x1

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/c;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/entry/c;-><init>()V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    if-ge v3, v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    mul-int/2addr v0, v5

    add-int/2addr v3, v0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->bitmap_cache:Lcom/xiaomi/gamecenter/sdk/entry/Image$a;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/entry/Image$a;->a(Lcom/xiaomi/gamecenter/sdk/entry/Image$a;)Landroid/support/v4/util/LruCache;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static cleanAll()V
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->bitmap_cache:Lcom/xiaomi/gamecenter/sdk/entry/Image$a;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/entry/Image$a;->a(Lcom/xiaomi/gamecenter/sdk/entry/Image$a;)Landroid/support/v4/util/LruCache;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/Image;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->image_cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/Image;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/Image;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/sdk/entry/Image;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/entry/Image;->image_cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static get(Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/Image$ImageProcesser;)Lcom/xiaomi/gamecenter/sdk/entry/Image;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/entry/Image;->get(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/Image;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/gamecenter/sdk/entry/Image;->setImageProcesser(Lcom/xiaomi/gamecenter/sdk/entry/Image$ImageProcesser;)V

    goto :goto_0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/Image;
    .locals 3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "http"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/CdnDomainUrl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->image_cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/Image;

    if-nez v0, :cond_4

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/Image;

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/Image;-><init>(Ljava/lang/String;)V

    iput-object p0, v0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mCdnDomain:Ljava/lang/String;

    iput-object p1, v0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mResType:Ljava/lang/String;

    iput-object p2, v0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mParameters:Ljava/lang/String;

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/entry/Image;->image_cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mCdnDomain:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iput-object p0, v0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mCdnDomain:Ljava/lang/String;

    :cond_5
    iget-object v1, v0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mResType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    iput-object p1, v0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mResType:Ljava/lang/String;

    :cond_6
    iget-object v1, v0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mParameters:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p2, v0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mParameters:Ljava/lang/String;

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->bitmap_cache:Lcom/xiaomi/gamecenter/sdk/entry/Image$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/Image$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/Image$a;-><init>(B)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->bitmap_cache:Lcom/xiaomi/gamecenter/sdk/entry/Image$a;

    :cond_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->image_cache:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->image_cache:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_1
    return-void
.end method

.method public static setNormalHost(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static setThumbnailHost(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/xiaomi/gamecenter/sdk/entry/Image;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mPath:Ljava/lang/String;

    check-cast p1, Lcom/xiaomi/gamecenter/sdk/entry/Image;

    iget-object v1, p1, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final getImagePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalCacheFile(Ljava/io/File;)Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mLocalName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mLocalName:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getLocalCacheFileByPackageName(Ljava/io/File;)Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mLocalName:Ljava/lang/String;

    return-object v0
.end method

.method public final getMemoryCachedBitmap()Landroid/graphics/Bitmap;
    .locals 2

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->bitmap_cache:Lcom/xiaomi/gamecenter/sdk/entry/Image$a;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/entry/Image$a;->a(Lcom/xiaomi/gamecenter/sdk/entry/Image$a;)Landroid/support/v4/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mParameters:Ljava/lang/String;

    return-object v0
.end method

.method public getProcesser()Lcom/xiaomi/gamecenter/sdk/entry/Image$ImageProcesser;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mProcesser:Lcom/xiaomi/gamecenter/sdk/entry/Image$ImageProcesser;

    return-object v0
.end method

.method public getResType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mResType:Ljava/lang/String;

    return-object v0
.end method

.method public getmCdnDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mCdnDomain:Ljava/lang/String;

    return-object v0
.end method

.method public final hasLocalCache(Ljava/io/File;)Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mLocalName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mLocalName:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasMemoryCache()Z
    .locals 2

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->bitmap_cache:Lcom/xiaomi/gamecenter/sdk/entry/Image$a;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/entry/Image$a;->a(Lcom/xiaomi/gamecenter/sdk/entry/Image$a;)Landroid/support/v4/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mPath:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isHD()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mIsHD:Z

    return v0
.end method

.method public setImagePackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setImageProcesser(Lcom/xiaomi/gamecenter/sdk/entry/Image$ImageProcesser;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mProcesser:Lcom/xiaomi/gamecenter/sdk/entry/Image$ImageProcesser;

    return-void
.end method

.method public setIsHD(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mIsHD:Z

    return-void
.end method

.method public final setMemoryCachedBitmap(Landroid/graphics/Bitmap;J)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->bitmap_cache:Lcom/xiaomi/gamecenter/sdk/entry/Image$a;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/entry/Image$a;->a(Lcom/xiaomi/gamecenter/sdk/entry/Image$a;)Landroid/support/v4/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setThumbnailFormat(Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mFormat:Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;

    return-void
.end method

.method public setmCdnDomain(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image;->mCdnDomain:Ljava/lang/String;

    return-void
.end method
