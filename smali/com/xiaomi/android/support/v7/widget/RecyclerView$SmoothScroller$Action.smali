.class public Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/view/animation/Interpolator;

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->d:I

    iput-boolean v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->f:Z

    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->g:I

    iput p1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->a:I

    iput p2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->b:I

    iput p3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->c:I

    iput-object p4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->e:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->d:I

    return-void
.end method

.method public final a(IIILandroid/view/animation/Interpolator;)V
    .locals 1

    iput p1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->a:I

    iput p2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->b:I

    iput p3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->c:I

    iput-object p4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->e:Landroid/view/animation/Interpolator;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->f:Z

    return-void
.end method

.method final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->d:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->d:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->d:I

    invoke-virtual {p1, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->c(I)V

    iput-boolean v5, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->f:Z

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->f:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->e:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->c:I

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->c:I

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->e:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_5

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->c:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->y:Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->a:I

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b(II)V

    :goto_1
    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->g:I

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->g:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_3

    const-string v0, "RecyclerView"

    const-string v1, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-boolean v5, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->f:Z

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->y:Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->a:I

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->b:I

    iget v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->a(III)V

    goto :goto_1

    :cond_5
    iget-object v0, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->y:Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->a:I

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->b:I

    iget v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->c:I

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->e:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->a(IIILandroid/view/animation/Interpolator;)V

    goto :goto_1

    :cond_6
    iput v5, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->g:I

    goto :goto_0
.end method

.method final a()Z
    .locals 1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->d:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
