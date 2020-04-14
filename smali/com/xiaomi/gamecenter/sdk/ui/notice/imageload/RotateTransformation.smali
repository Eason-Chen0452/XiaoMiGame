.class public Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/RotateTransformation;
.super Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;


# instance fields
.field private a:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/RotateTransformation;->a:F

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/RotateTransformation;->a:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/RotateTransformation;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/RotateTransformation;

    iget v0, p1, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/RotateTransformation;->a:F

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/RotateTransformation;->a:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    const/high16 v0, 0x41f80000    # 31.0f

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/RotateTransformation;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const-string v1, "com.xiaomi.gamecenter.sdk.rotate"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected transform(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7
    .param p1    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/RotateTransformation;->a:F

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p2

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "com.xiaomi.gamecenter.sdk.rotate"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
