.class public Lcom/aonesoft/lib/AoneSurfaceControl;
.super Ljava/lang/Object;
.source "AoneSurfaceControl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static screenshot(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 9
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 12
    .local v0, "bmp":Landroid/graphics/Bitmap;
    return-object v0
.end method
