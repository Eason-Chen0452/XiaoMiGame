.class Lcom/aonesoft/lib/ClipPictureActivity$2;
.super Ljava/lang/Object;
.source "ClipPictureActivity.java"

# interfaces
.implements Lcom/aonesoft/lib/ClipView$OnDrawListenerComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aonesoft/lib/ClipPictureActivity;->initClipView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aonesoft/lib/ClipPictureActivity;


# direct methods
.method constructor <init>(Lcom/aonesoft/lib/ClipPictureActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aonesoft/lib/ClipPictureActivity$2;->this$0:Lcom/aonesoft/lib/ClipPictureActivity;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawCompelete()V
    .locals 13

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/high16 v11, 0x3f800000    # 1.0f

    .line 169
    iget-object v9, p0, Lcom/aonesoft/lib/ClipPictureActivity$2;->this$0:Lcom/aonesoft/lib/ClipPictureActivity;

    invoke-static {v9}, Lcom/aonesoft/lib/ClipPictureActivity;->access$2(Lcom/aonesoft/lib/ClipPictureActivity;)Lcom/aonesoft/lib/ClipView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/aonesoft/lib/ClipView;->removeOnDrawCompleteListener()V

    .line 170
    iget-object v9, p0, Lcom/aonesoft/lib/ClipPictureActivity$2;->this$0:Lcom/aonesoft/lib/ClipPictureActivity;

    invoke-static {v9}, Lcom/aonesoft/lib/ClipPictureActivity;->access$2(Lcom/aonesoft/lib/ClipPictureActivity;)Lcom/aonesoft/lib/ClipView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/aonesoft/lib/ClipView;->getClipHeight()I

    move-result v0

    .line 171
    .local v0, "clipHeight":I
    iget-object v9, p0, Lcom/aonesoft/lib/ClipPictureActivity$2;->this$0:Lcom/aonesoft/lib/ClipPictureActivity;

    invoke-static {v9}, Lcom/aonesoft/lib/ClipPictureActivity;->access$2(Lcom/aonesoft/lib/ClipPictureActivity;)Lcom/aonesoft/lib/ClipView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/aonesoft/lib/ClipView;->getClipWidth()I

    move-result v1

    .line 172
    .local v1, "clipWidth":I
    iget-object v9, p0, Lcom/aonesoft/lib/ClipPictureActivity$2;->this$0:Lcom/aonesoft/lib/ClipPictureActivity;

    invoke-static {v9}, Lcom/aonesoft/lib/ClipPictureActivity;->access$2(Lcom/aonesoft/lib/ClipPictureActivity;)Lcom/aonesoft/lib/ClipView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/aonesoft/lib/ClipView;->getClipLeftMargin()I

    move-result v9

    div-int/lit8 v10, v1, 0x2

    add-int v6, v9, v10

    .line 173
    .local v6, "midX":I
    iget-object v9, p0, Lcom/aonesoft/lib/ClipPictureActivity$2;->this$0:Lcom/aonesoft/lib/ClipPictureActivity;

    invoke-static {v9}, Lcom/aonesoft/lib/ClipPictureActivity;->access$2(Lcom/aonesoft/lib/ClipPictureActivity;)Lcom/aonesoft/lib/ClipView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/aonesoft/lib/ClipView;->getClipTopMargin()I

    move-result v9

    div-int/lit8 v10, v0, 0x2

    add-int v7, v9, v10

    .line 175
    .local v7, "midY":I
    iget-object v9, p0, Lcom/aonesoft/lib/ClipPictureActivity$2;->this$0:Lcom/aonesoft/lib/ClipPictureActivity;

    invoke-static {v9}, Lcom/aonesoft/lib/ClipPictureActivity;->access$3(Lcom/aonesoft/lib/ClipPictureActivity;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 176
    .local v5, "imageWidth":I
    iget-object v9, p0, Lcom/aonesoft/lib/ClipPictureActivity$2;->this$0:Lcom/aonesoft/lib/ClipPictureActivity;

    invoke-static {v9}, Lcom/aonesoft/lib/ClipPictureActivity;->access$3(Lcom/aonesoft/lib/ClipPictureActivity;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 178
    .local v2, "imageHeight":I
    int-to-float v9, v1

    mul-float/2addr v9, v11

    int-to-float v10, v5

    div-float v8, v9, v10

    .line 179
    .local v8, "scale":F
    if-le v5, v2, :cond_0

    .line 180
    int-to-float v9, v0

    mul-float/2addr v9, v11

    int-to-float v10, v2

    div-float v8, v9, v10

    .line 184
    :cond_0
    int-to-float v9, v5

    mul-float/2addr v9, v8

    div-float v3, v9, v12

    .line 185
    .local v3, "imageMidX":F
    iget-object v9, p0, Lcom/aonesoft/lib/ClipPictureActivity$2;->this$0:Lcom/aonesoft/lib/ClipPictureActivity;

    invoke-static {v9}, Lcom/aonesoft/lib/ClipPictureActivity;->access$2(Lcom/aonesoft/lib/ClipPictureActivity;)Lcom/aonesoft/lib/ClipView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/aonesoft/lib/ClipView;->getCustomTopBarHeight()I

    move-result v9

    int-to-float v9, v9

    .line 186
    int-to-float v10, v2

    mul-float/2addr v10, v8

    div-float/2addr v10, v12

    .line 185
    add-float v4, v9, v10

    .line 187
    .local v4, "imageMidY":F
    iget-object v9, p0, Lcom/aonesoft/lib/ClipPictureActivity$2;->this$0:Lcom/aonesoft/lib/ClipPictureActivity;

    invoke-static {v9}, Lcom/aonesoft/lib/ClipPictureActivity;->access$0(Lcom/aonesoft/lib/ClipPictureActivity;)Landroid/widget/ImageView;

    move-result-object v9

    sget-object v10, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 190
    iget-object v9, p0, Lcom/aonesoft/lib/ClipPictureActivity$2;->this$0:Lcom/aonesoft/lib/ClipPictureActivity;

    invoke-static {v9}, Lcom/aonesoft/lib/ClipPictureActivity;->access$4(Lcom/aonesoft/lib/ClipPictureActivity;)Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v9, v8, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 192
    iget-object v9, p0, Lcom/aonesoft/lib/ClipPictureActivity$2;->this$0:Lcom/aonesoft/lib/ClipPictureActivity;

    invoke-static {v9}, Lcom/aonesoft/lib/ClipPictureActivity;->access$4(Lcom/aonesoft/lib/ClipPictureActivity;)Landroid/graphics/Matrix;

    move-result-object v9

    int-to-float v10, v6

    sub-float/2addr v10, v3

    int-to-float v11, v7

    sub-float/2addr v11, v4

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 193
    iget-object v9, p0, Lcom/aonesoft/lib/ClipPictureActivity$2;->this$0:Lcom/aonesoft/lib/ClipPictureActivity;

    invoke-static {v9}, Lcom/aonesoft/lib/ClipPictureActivity;->access$0(Lcom/aonesoft/lib/ClipPictureActivity;)Landroid/widget/ImageView;

    move-result-object v9

    iget-object v10, p0, Lcom/aonesoft/lib/ClipPictureActivity$2;->this$0:Lcom/aonesoft/lib/ClipPictureActivity;

    invoke-static {v10}, Lcom/aonesoft/lib/ClipPictureActivity;->access$4(Lcom/aonesoft/lib/ClipPictureActivity;)Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 194
    iget-object v9, p0, Lcom/aonesoft/lib/ClipPictureActivity$2;->this$0:Lcom/aonesoft/lib/ClipPictureActivity;

    invoke-static {v9}, Lcom/aonesoft/lib/ClipPictureActivity;->access$0(Lcom/aonesoft/lib/ClipPictureActivity;)Landroid/widget/ImageView;

    move-result-object v9

    iget-object v10, p0, Lcom/aonesoft/lib/ClipPictureActivity$2;->this$0:Lcom/aonesoft/lib/ClipPictureActivity;

    invoke-static {v10}, Lcom/aonesoft/lib/ClipPictureActivity;->access$3(Lcom/aonesoft/lib/ClipPictureActivity;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 195
    return-void
.end method
