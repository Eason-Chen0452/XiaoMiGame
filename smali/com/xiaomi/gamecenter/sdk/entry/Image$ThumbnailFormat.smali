.class public Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/sdk/entry/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThumbnailFormat"
.end annotation


# static fields
.field public static final FORMAT_JPEG:I = 0x0

.field public static final FORMAT_PNG:I = 0x1

.field public static final QUALITY_DEFAULT:I = 0x50

.field public static final THUMBNAIL_MAX_HEIGHT:I = 0x2

.field public static final THUMBNAIL_MAX_LENGTH:I = 0x0

.field public static final THUMBNAIL_MAX_WIDTH:I = 0x1

.field public static final THUMBNAIL_MAX_WIDTH_HEIGHT:I = 0x3


# instance fields
.field private mImageFormat:I

.field private mImageQuality:I

.field private mMaxHeight:I

.field private mMaxLength:I

.field private mMaxWidth:I

.field private mThumbnailType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mMaxWidth:I

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mMaxHeight:I

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mMaxLength:I

    const/16 v0, 0x50

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mImageQuality:I

    return-void
.end method

.method public static getMaxHeightThumnail(II)Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;
    .locals 2

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;-><init>()V

    iput p0, v0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mMaxWidth:I

    const/4 v1, 0x2

    iput v1, v0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mThumbnailType:I

    iput p1, v0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mImageFormat:I

    return-object v0
.end method

.method public static getMaxLengthThumnail(II)Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;
    .locals 2

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;-><init>()V

    iput p0, v0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mMaxLength:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mThumbnailType:I

    iput p1, v0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mImageFormat:I

    return-object v0
.end method

.method public static getMaxWidthHeightThumnail(III)Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;
    .locals 2

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;-><init>()V

    iput p0, v0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mMaxWidth:I

    iput p1, v0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mMaxHeight:I

    const/4 v1, 0x3

    iput v1, v0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mThumbnailType:I

    iput p2, v0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mImageFormat:I

    return-object v0
.end method

.method public static getMaxWidthThumnail(II)Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;
    .locals 2

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;-><init>()V

    iput p0, v0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mMaxWidth:I

    const/4 v1, 0x1

    iput v1, v0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mThumbnailType:I

    iput p1, v0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mImageFormat:I

    return-object v0
.end method


# virtual methods
.method public checkFormat()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mImageFormat:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mImageFormat:I

    if-eq v2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mThumbnailType:I

    if-nez v2, :cond_2

    iget v2, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mMaxLength:I

    if-lez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mThumbnailType:I

    if-ne v2, v1, :cond_3

    iget v2, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mMaxWidth:I

    if-lez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mThumbnailType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mMaxHeight:I

    if-lez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mThumbnailType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mMaxWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mMaxHeight:I

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method getThumbnailFormatProperty()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->checkFormat()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mImageFormat:I

    if-nez v1, :cond_3

    const-string v1, "jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mThumbnailType:I

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "l"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mMaxLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "q"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mImageQuality:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mImageFormat:I

    if-ne v1, v2, :cond_1

    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mThumbnailType:I

    if-ne v1, v2, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "w"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mMaxWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mThumbnailType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "h"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mMaxHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mThumbnailType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "w"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mMaxWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "h"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mMaxHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2
.end method

.method public setImageQuality(I)V
    .locals 1

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/16 v0, 0x50

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mImageQuality:I

    :cond_1
    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image$ThumbnailFormat;->mImageQuality:I

    return-void
.end method
