.class public final Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;
.super Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
.source "RoundedCorners.java"


# static fields
.field private static final ID:Ljava/lang/String; = "com.bumptech.glide.load.resource.bitmap.RoundedCorners"

.field private static final ID_BYTES:[B


# instance fields
.field private final roundingRadius:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-string v0, "com.bumptech.glide.load.resource.bitmap.RoundedCorners"

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;->ID_BYTES:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "roundingRadius"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>()V

    .line 25
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "roundingRadius must be greater than 0."

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 26
    iput p1, p0, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;->roundingRadius:I

    .line 27
    return-void

    .line 25
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "roundingRadius"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;I)V
    .locals 0
    .param p1, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p2, "roundingRadius"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 60
    instance-of v0, p1, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    .end local p1    # "o":Ljava/lang/Object;
    iget v0, p1, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;->roundingRadius:I

    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;->roundingRadius:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 65
    const-string v0, "com.bumptech.glide.load.resource.bitmap.RoundedCorners"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;->roundingRadius:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected transform(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "toTransform"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "outWidth"    # I
    .param p4, "outHeight"    # I

    .prologue
    .line 54
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;->roundingRadius:I

    invoke-static {p1, p2, p3, p4, v0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->roundedCorners(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 3
    .param p1, "messageDigest"    # Ljava/security/MessageDigest;

    .prologue
    .line 70
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;->ID_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 72
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;->roundingRadius:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 73
    .local v0, "radiusData":[B
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 74
    return-void
.end method
