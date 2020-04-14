.class final Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/android/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field a:Landroid/view/animation/Interpolator;

.field final synthetic b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

.field private c:I

.field private d:I

.field private e:Landroid/widget/OverScroller;

.field private f:Z

.field private g:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V
    .locals 3

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->H:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->a:Landroid/view/animation/Interpolator;

    iput-boolean v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->f:Z

    iput-boolean v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->g:Z

    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->H:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->e:Landroid/widget/OverScroller;

    return-void
.end method

.method private d(II)I
    .locals 13

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v2, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int v1, p1, p1

    mul-int v5, p2, p2

    add-int/2addr v1, v5

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v5, v6

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    :goto_1
    div-int/lit8 v6, v1, 0x2

    int-to-float v5, v5

    mul-float/2addr v5, v12

    int-to-float v7, v1

    div-float/2addr v5, v7

    invoke-static {v12, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    int-to-float v7, v6

    int-to-float v6, v6

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v5, v8

    float-to-double v8, v5

    const-wide v10, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v8, v10

    double-to-float v5, v8

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v5, v8

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    if-lez v4, :cond_2

    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v1, v4

    div-float v1, v5, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    :goto_2
    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v12

    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_3
.end method


# virtual methods
.method final a()V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->g:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(II)V
    .locals 9

    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(I)V

    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->d:I

    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->c:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->e:Landroid/widget/OverScroller;

    move v2, v1

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->a()V

    return-void
.end method

.method public final a(III)V
    .locals 1

    sget-object v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->H:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->a(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public final a(IIILandroid/view/animation/Interpolator;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->a:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    iput-object p4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->a:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/widget/OverScroller;

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->e:Landroid/widget/OverScroller;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(I)V

    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->d:I

    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->c:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->e:Landroid/widget/OverScroller;

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->a()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->e:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    return-void
.end method

.method public final b(II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->d(II)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->a(III)V

    return-void
.end method

.method public final c(II)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->d(II)I

    move-result v0

    sget-object v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->H:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->a(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public final run()V
    .locals 14

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->f:Z

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d()V

    iget-object v7, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->e:Landroid/widget/OverScroller;

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v8, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->t:Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v7}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v7}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v9

    invoke-virtual {v7}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v10

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->c:I

    sub-int v11, v9, v0

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->d:I

    sub-int v12, v10, v0

    const/4 v3, 0x0

    const/4 v1, 0x0

    iput v9, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->c:I

    iput v10, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->d:I

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v4, v4, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->e()V

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f()V

    const-string v4, "RV Scroll"

    invoke-static {v4}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    if-eqz v11, :cond_2

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v2, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v3, v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v4, v4, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2, v11, v3, v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(ILcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I

    move-result v3

    sub-int v2, v11, v3

    :cond_2
    if-eqz v12, :cond_3

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v4, v4, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v12, v1, v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->b(ILcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I

    move-result v1

    sub-int v0, v12, v1

    :cond_3
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->o()V

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->g()V

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Z)V

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->d()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v8}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->e()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v4, v4, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    invoke-virtual {v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->b()I

    move-result v4

    if-nez v4, :cond_16

    invoke-virtual {v8}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->c()V

    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v4, v4, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->o:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->invalidate()V

    :cond_5
    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v11, v12}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(II)V

    :cond_6
    if-nez v2, :cond_7

    if-eqz v0, :cond_c

    :cond_7
    invoke-virtual {v7}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v4

    float-to-int v5, v4

    const/4 v4, 0x0

    if-eq v2, v9, :cond_20

    if-gez v2, :cond_18

    neg-int v4, v5

    :goto_2
    move v6, v4

    :goto_3
    const/4 v4, 0x0

    if-eq v0, v10, :cond_1f

    if-gez v0, :cond_1a

    neg-int v5, v5

    :cond_8
    :goto_4
    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v4

    const/4 v13, 0x2

    if-eq v4, v13, :cond_9

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v6, v5}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->b(II)V

    :cond_9
    if-nez v6, :cond_a

    if-eq v2, v9, :cond_a

    invoke-virtual {v7}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    if-nez v5, :cond_b

    if-eq v0, v10, :cond_b

    invoke-virtual {v7}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    invoke-virtual {v7}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_c
    if-nez v3, :cond_d

    if-eqz v1, :cond_e

    :cond_d
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m()V

    :cond_e
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-static {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->invalidate()V

    :cond_f
    if-eqz v12, :cond_1b

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->j()Z

    move-result v0

    if-eqz v0, :cond_1b

    if-ne v1, v12, :cond_1b

    const/4 v0, 0x1

    move v1, v0

    :goto_5
    if-eqz v11, :cond_1c

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->i()Z

    move-result v0

    if-eqz v0, :cond_1c

    if-ne v3, v11, :cond_1c

    const/4 v0, 0x1

    :goto_6
    if-nez v11, :cond_10

    if-eqz v12, :cond_11

    :cond_10
    if-nez v0, :cond_11

    if-eqz v1, :cond_1d

    :cond_11
    const/4 v0, 0x1

    :goto_7
    invoke-virtual {v7}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_12

    if-nez v0, :cond_1e

    :cond_12
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(I)V

    invoke-static {}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->q()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->A:Lcom/xiaomi/android/support/v7/widget/n$a;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/n$a;->a()V

    :cond_13
    :goto_8
    if-eqz v8, :cond_15

    invoke-virtual {v8}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->d()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v8, v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;II)V

    :cond_14
    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->g:Z

    if-nez v0, :cond_15

    invoke-virtual {v8}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->c()V

    :cond_15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->f:Z

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->a()V

    goto/16 :goto_0

    :cond_16
    invoke-virtual {v8}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->f()I

    move-result v5

    if-lt v5, v4, :cond_17

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v8, v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->a(I)V

    :cond_17
    sub-int v4, v11, v2

    sub-int v5, v12, v0

    invoke-static {v8, v4, v5}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;II)V

    goto/16 :goto_1

    :cond_18
    if-lez v2, :cond_19

    move v4, v5

    goto/16 :goto_2

    :cond_19
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_1a
    if-gtz v0, :cond_8

    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_1b
    const/4 v0, 0x0

    move v1, v0

    goto :goto_5

    :cond_1c
    const/4 v0, 0x0

    goto :goto_6

    :cond_1d
    const/4 v0, 0x0

    goto :goto_7

    :cond_1e
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->a()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->z:Lcom/xiaomi/android/support/v7/widget/n;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->z:Lcom/xiaomi/android/support/v7/widget/n;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, v11, v12}, Lcom/xiaomi/android/support/v7/widget/n;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;II)V

    goto :goto_8

    :cond_1f
    move v5, v4

    goto/16 :goto_4

    :cond_20
    move v6, v4

    goto/16 :goto_3
.end method
