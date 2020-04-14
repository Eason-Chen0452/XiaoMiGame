.class Lcom/aonesoft/lib/DensityUtils;
.super Ljava/lang/Object;
.source "GenerateQRCode.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dp2px(Landroid/content/Context;F)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # F

    .prologue
    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 202
    .local v0, "density":F
    mul-float v2, p1, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 203
    .local v1, "px":I
    return v1
.end method

.method public static px2dp(Landroid/content/Context;I)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "px"    # I

    .prologue
    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 209
    .local v0, "density":F
    int-to-float v2, p1

    div-float v1, v2, v0

    .line 210
    .local v1, "dp":F
    return v1
.end method
