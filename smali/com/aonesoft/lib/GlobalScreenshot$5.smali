.class Lcom/aonesoft/lib/GlobalScreenshot$5;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aonesoft/lib/GlobalScreenshot;->createScreenshotDropInAnimation()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aonesoft/lib/GlobalScreenshot;


# direct methods
.method constructor <init>(Lcom/aonesoft/lib/GlobalScreenshot;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aonesoft/lib/GlobalScreenshot$5;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .param p1, "x"    # F

    .prologue
    const v2, 0x3f1aca6b

    .line 351
    cmpg-float v0, p1, v2

    if-gtz v0, :cond_0

    .line 352
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-float v2, p1, v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 354
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
