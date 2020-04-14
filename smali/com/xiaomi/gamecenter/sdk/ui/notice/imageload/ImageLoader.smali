.class public Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoader;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/widget/ImageView;Lcom/xiaomi/gamecenter/sdk/entry/Image;ILcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/ImageView;",
            "Lcom/xiaomi/gamecenter/sdk/entry/Image;",
            "I",
            "Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;",
            "II)V"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-static {p1, p3}, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoader;->a(Landroid/widget/ImageView;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/entry/Image;->getImagePath()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoader;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ILcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;IILcom/bumptech/glide/load/Transformation;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/widget/ImageView;Lcom/xiaomi/gamecenter/sdk/entry/Image;ILcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;Lcom/bumptech/glide/load/Transformation;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/ImageView;",
            "Lcom/xiaomi/gamecenter/sdk/entry/Image;",
            "I",
            "Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    if-nez p2, :cond_0

    invoke-static {p1, p3}, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoader;->a(Landroid/widget/ImageView;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/entry/Image;->getImagePath()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move v6, v5

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoader;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ILcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;IILcom/bumptech/glide/load/Transformation;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ILcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;IILcom/bumptech/glide/load/Transformation;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "I",
            "Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;",
            "II",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v9}, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoader;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ILcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;IILcom/bumptech/glide/load/Transformation;ZZ)V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ILcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;IILcom/bumptech/glide/load/Transformation;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "I",
            "Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;",
            "II",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;ZZ)V"
        }
    .end annotation

    const/4 v2, 0x1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p3}, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoader;->a(Landroid/widget/ImageView;I)V

    :goto_0
    return-void

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4, p3}, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;->a(I)V

    :cond_1
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p8}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->fitCenter()Lcom/bumptech/glide/request/RequestOptions;

    const-string v1, "download/Wali"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".gif"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v1, :cond_8

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/RequestOptions;

    :goto_2
    if-eqz p7, :cond_3

    invoke-virtual {v0, p7}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    :cond_3
    if-gtz p5, :cond_4

    if-lez p6, :cond_5

    :cond_4
    invoke-virtual {v0, p5, p6}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->centerCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    :cond_5
    if-nez p9, :cond_6

    invoke-static {p0}, Lcn/com/wali/basetool/utils/SystemConfig;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/RequestOptions;

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ImageLoader loadUrl="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    goto :goto_1

    :cond_8
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->dontAnimate()Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_2
.end method

.method public static a(Landroid/widget/ImageView;I)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Landroid/widget/ImageView;Lcom/xiaomi/gamecenter/sdk/entry/Image;ILcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/ImageView;",
            "Lcom/xiaomi/gamecenter/sdk/entry/Image;",
            "I",
            "Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;",
            "II)V"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-static {p1, p3}, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoader;->a(Landroid/widget/ImageView;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/entry/Image;->getImagePath()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoader;->b(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ILcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;IILcom/bumptech/glide/load/Transformation;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Landroid/widget/ImageView;Lcom/xiaomi/gamecenter/sdk/entry/Image;ILcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;Lcom/bumptech/glide/load/Transformation;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/ImageView;",
            "Lcom/xiaomi/gamecenter/sdk/entry/Image;",
            "I",
            "Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    if-nez p2, :cond_0

    invoke-static {p1, p3}, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoader;->a(Landroid/widget/ImageView;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/entry/Image;->getImagePath()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move v6, v5

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoader;->b(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ILcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;IILcom/bumptech/glide/load/Transformation;)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ILcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;IILcom/bumptech/glide/load/Transformation;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "I",
            "Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;",
            "II",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v9}, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoader;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ILcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;IILcom/bumptech/glide/load/Transformation;ZZ)V

    return-void
.end method
