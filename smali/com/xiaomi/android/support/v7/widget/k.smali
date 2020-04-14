.class final Lcom/xiaomi/android/support/v7/widget/k;
.super Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemDecoration;

# interfaces
.implements Lcom/xiaomi/android/support/v7/widget/RecyclerView$e;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/android/support/v7/widget/k$b;,
        Lcom/xiaomi/android/support/v7/widget/k$a;
    }
.end annotation


# static fields
.field private static final g:[I

.field private static final h:[I


# instance fields
.field private final A:[I

.field private final B:Landroid/animation/ValueAnimator;

.field private C:I

.field private final D:Ljava/lang/Runnable;

.field private final E:Lcom/xiaomi/android/support/v7/widget/RecyclerView$OnScrollListener;

.field a:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field c:F
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field d:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field e:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field f:F
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final i:I

.field private final j:I

.field private final k:Landroid/graphics/drawable/StateListDrawable;

.field private final l:Landroid/graphics/drawable/Drawable;

.field private final m:I

.field private final n:I

.field private final o:Landroid/graphics/drawable/StateListDrawable;

.field private final p:Landroid/graphics/drawable/Drawable;

.field private final q:I

.field private final r:I

.field private s:I

.field private t:I

.field private u:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

.field private v:Z

.field private w:Z

.field private x:I

.field private y:I

.field private final z:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/xiaomi/android/support/v7/widget/k;->g:[I

    new-array v0, v2, [I

    sput-object v0, Lcom/xiaomi/android/support/v7/widget/k;->h:[I

    return-void
.end method

.method constructor <init>(Lcom/xiaomi/android/support/v7/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V
    .locals 5

    const/16 v2, 0xff

    const/4 v4, 0x2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->s:I

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->t:I

    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->v:Z

    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->w:Z

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->x:I

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->y:I

    new-array v1, v4, [I

    iput-object v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->z:[I

    new-array v1, v4, [I

    iput-object v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->A:[I

    new-array v1, v4, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->B:Landroid/animation/ValueAnimator;

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->C:I

    new-instance v1, Lcom/xiaomi/android/support/v7/widget/l;

    invoke-direct {v1, p0}, Lcom/xiaomi/android/support/v7/widget/l;-><init>(Lcom/xiaomi/android/support/v7/widget/k;)V

    iput-object v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->D:Ljava/lang/Runnable;

    new-instance v1, Lcom/xiaomi/android/support/v7/widget/m;

    invoke-direct {v1, p0}, Lcom/xiaomi/android/support/v7/widget/m;-><init>(Lcom/xiaomi/android/support/v7/widget/k;)V

    iput-object v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->E:Lcom/xiaomi/android/support/v7/widget/RecyclerView$OnScrollListener;

    iput-object p2, p0, Lcom/xiaomi/android/support/v7/widget/k;->k:Landroid/graphics/drawable/StateListDrawable;

    iput-object p3, p0, Lcom/xiaomi/android/support/v7/widget/k;->l:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/xiaomi/android/support/v7/widget/k;->o:Landroid/graphics/drawable/StateListDrawable;

    iput-object p5, p0, Lcom/xiaomi/android/support/v7/widget/k;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {p6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->m:I

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {p6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->n:I

    invoke-virtual {p4}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {p6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->q:I

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {p6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->r:I

    iput p7, p0, Lcom/xiaomi/android/support/v7/widget/k;->i:I

    iput p8, p0, Lcom/xiaomi/android/support/v7/widget/k;->j:I

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->k:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->B:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/xiaomi/android/support/v7/widget/k$a;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/android/support/v7/widget/k$a;-><init>(Lcom/xiaomi/android/support/v7/widget/k;B)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->B:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/xiaomi/android/support/v7/widget/k$b;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/android/support/v7/widget/k$b;-><init>(Lcom/xiaomi/android/support/v7/widget/k;B)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->u:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    if-eq v1, p1, :cond_4

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->u:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->u:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v2, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    const-string v3, "Cannot remove item decoration during a scroll  or layout"

    invoke-virtual {v2, v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v2, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v2

    if-ne v2, v4, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    :cond_2
    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->k()V

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->requestLayout()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->u:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$e;)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->u:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->E:Lcom/xiaomi/android/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$OnScrollListener;)V

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/k;->d()V

    :cond_3
    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/k;->u:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->u:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->u:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->u:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$e;)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->u:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->E:Lcom/xiaomi/android/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$OnScrollListener;)V

    :cond_4
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static a(FF[IIII)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    aget v1, p2, v1

    aget v2, p2, v0

    sub-int/2addr v1, v2

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sub-float v2, p1, p0

    int-to-float v1, v1

    div-float v1, v2, v1

    sub-int v2, p3, p5

    int-to-float v3, v2

    mul-float/2addr v1, v3

    float-to-int v1, v1

    add-int v3, p4, v1

    if-ge v3, v2, :cond_0

    if-ltz v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/xiaomi/android/support/v7/widget/k;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/android/support/v7/widget/k;->C:I

    return p1
.end method

.method static synthetic a(Lcom/xiaomi/android/support/v7/widget/k;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->B:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private a(I)V
    .locals 3

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->x:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->k:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Lcom/xiaomi/android/support/v7/widget/k;->g:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/k;->d()V

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->u:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->invalidate()V

    :goto_0
    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->x:I

    if-ne v0, v2, :cond_3

    if-eq p1, v2, :cond_3

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->k:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Lcom/xiaomi/android/support/v7/widget/k;->h:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    const/16 v0, 0x4b0

    invoke-direct {p0, v0}, Lcom/xiaomi/android/support/v7/widget/k;->b(I)V

    :cond_1
    :goto_1
    iput p1, p0, Lcom/xiaomi/android/support/v7/widget/k;->x:I

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/k;->c()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 v0, 0x5dc

    invoke-direct {p0, v0}, Lcom/xiaomi/android/support/v7/widget/k;->b(I)V

    goto :goto_1
.end method

.method private a(FF)Z
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/k;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->m:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->b:I

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->a:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->b:I

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->a:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->s:I

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->m:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-gez v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(I)V
    .locals 4

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/k;->d()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->u:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->D:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic b(Lcom/xiaomi/android/support/v7/widget/k;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/android/support/v7/widget/k;->a(I)V

    return-void
.end method

.method private b()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->u:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(FF)Z
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->t:I

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->q:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->e:I

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->d:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->e:I

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->d:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 5

    const/4 v4, 0x1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->C:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->B:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :pswitch_2
    iput v4, p0, Lcom/xiaomi/android/support/v7/widget/k;->C:I

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->B:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v2, v0, [F

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->B:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v2, v3

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->B:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->B:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->B:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic c(Lcom/xiaomi/android/support/v7/widget/k;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->u:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->invalidate()V

    return-void
.end method

.method static synthetic d(Lcom/xiaomi/android/support/v7/widget/k;)Landroid/graphics/drawable/StateListDrawable;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->k:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->u:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic e(Lcom/xiaomi/android/support/v7/widget/k;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->l:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->C:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->B:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :pswitch_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->C:I

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->B:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v2, v0, [F

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->B:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x0

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->B:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->B:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method final a(II)V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->u:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v3

    iget v4, p0, Lcom/xiaomi/android/support/v7/widget/k;->t:I

    sub-int v0, v3, v4

    if-lez v0, :cond_1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->t:I

    iget v5, p0, Lcom/xiaomi/android/support/v7/widget/k;->i:I

    if-lt v0, v5, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->v:Z

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->u:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v5

    iget v6, p0, Lcom/xiaomi/android/support/v7/widget/k;->s:I

    sub-int v0, v5, v6

    if-lez v0, :cond_2

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->s:I

    iget v7, p0, Lcom/xiaomi/android/support/v7/widget/k;->i:I

    if-lt v0, v7, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->w:Z

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->v:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->w:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->x:I

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lcom/xiaomi/android/support/v7/widget/k;->a(I)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->v:Z

    if-eqz v0, :cond_4

    int-to-float v0, p2

    int-to-float v2, v4

    div-float/2addr v2, v8

    add-float/2addr v0, v2

    int-to-float v2, v4

    mul-float/2addr v0, v2

    int-to-float v2, v3

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->b:I

    mul-int v0, v4, v4

    div-int/2addr v0, v3

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->a:I

    :cond_4
    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->w:Z

    if-eqz v0, :cond_5

    int-to-float v0, p1

    int-to-float v2, v6

    div-float/2addr v2, v8

    add-float/2addr v0, v2

    int-to-float v2, v6

    mul-float/2addr v0, v2

    int-to-float v2, v5

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->e:I

    mul-int v0, v6, v6

    div-int/2addr v0, v5

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->d:I

    :cond_5
    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->x:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->x:I

    if-ne v0, v1, :cond_0

    :cond_6
    invoke-direct {p0, v1}, Lcom/xiaomi/android/support/v7/widget/k;->a(I)V

    goto :goto_2
.end method

.method public final a(Landroid/graphics/Canvas;Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->s:I

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->u:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->t:I

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->u:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->u:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->s:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->u:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->t:I

    invoke-direct {p0, v5}, Lcom/xiaomi/android/support/v7/widget/k;->a(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->C:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->v:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->s:I

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->m:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->b:I

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/k;->a:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/k;->k:Landroid/graphics/drawable/StateListDrawable;

    iget v3, p0, Lcom/xiaomi/android/support/v7/widget/k;->m:I

    iget v4, p0, Lcom/xiaomi/android/support/v7/widget/k;->a:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/k;->l:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/xiaomi/android/support/v7/widget/k;->n:I

    iget v4, p0, Lcom/xiaomi/android/support/v7/widget/k;->t:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/k;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->m:I

    int-to-float v0, v0

    int-to-float v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->k:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->m:I

    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->w:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->t:I

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->q:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->e:I

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/k;->d:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/k;->o:Landroid/graphics/drawable/StateListDrawable;

    iget v3, p0, Lcom/xiaomi/android/support/v7/widget/k;->d:I

    iget v4, p0, Lcom/xiaomi/android/support/v7/widget/k;->q:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/k;->p:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/xiaomi/android/support/v7/widget/k;->s:I

    iget v4, p0, Lcom/xiaomi/android/support/v7/widget/k;->r:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    int-to-float v2, v0

    invoke-virtual {p1, v6, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/k;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v2, v1

    invoke-virtual {p1, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/k;->o:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v1, v1

    int-to-float v1, v1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_0

    :cond_4
    int-to-float v2, v0

    invoke-virtual {p1, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/k;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v2, v1

    invoke-virtual {p1, v6, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/k;->k:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x2

    const/4 v0, 0x1

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/k;->x:I

    if-ne v2, v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/xiaomi/android/support/v7/widget/k;->a(FF)Z

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/xiaomi/android/support/v7/widget/k;->b(FF)Z

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    if-nez v2, :cond_0

    if-eqz v3, :cond_4

    :cond_0
    if-eqz v3, :cond_3

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->y:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->f:F

    :cond_1
    :goto_0
    invoke-direct {p0, v5}, Lcom/xiaomi/android/support/v7/widget/k;->a(I)V

    :cond_2
    :goto_1
    return v0

    :cond_3
    if-eqz v2, :cond_1

    iput v5, p0, Lcom/xiaomi/android/support/v7/widget/k;->y:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->c:F

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/k;->x:I

    if-eq v2, v5, :cond_2

    move v0, v1

    goto :goto_1
.end method

.method public final b(Landroid/view/MotionEvent;)V
    .locals 10

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v1, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->x:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/android/support/v7/widget/k;->a(FF)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/android/support/v7/widget/k;->b(FF)Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    :cond_2
    if-eqz v1, :cond_4

    iput v6, p0, Lcom/xiaomi/android/support/v7/widget/k;->y:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->f:F

    :cond_3
    :goto_1
    invoke-direct {p0, v8}, Lcom/xiaomi/android/support/v7/widget/k;->a(I)V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_3

    iput v8, p0, Lcom/xiaomi/android/support/v7/widget/k;->y:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->c:F

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v6, :cond_6

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->x:I

    if-ne v0, v8, :cond_6

    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->c:F

    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->f:F

    invoke-direct {p0, v6}, Lcom/xiaomi/android/support/v7/widget/k;->a(I)V

    iput v7, p0, Lcom/xiaomi/android/support/v7/widget/k;->y:I

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v8, :cond_0

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->x:I

    if-ne v0, v8, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/k;->c()V

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->y:I

    if-ne v0, v6, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->A:[I

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/k;->j:I

    aput v2, v1, v7

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->A:[I

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/k;->s:I

    iget v3, p0, Lcom/xiaomi/android/support/v7/widget/k;->j:I

    sub-int/2addr v2, v3

    aput v2, v1, v6

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/k;->A:[I

    aget v1, v2, v7

    int-to-float v1, v1

    aget v3, v2, v6

    int-to-float v3, v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->e:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v9

    if-ltz v0, :cond_8

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->f:F

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/k;->u:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v3

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/k;->u:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v4

    iget v5, p0, Lcom/xiaomi/android/support/v7/widget/k;->s:I

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/android/support/v7/widget/k;->a(FF[IIII)I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/k;->u:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0, v7}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->scrollBy(II)V

    :cond_7
    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->f:F

    :cond_8
    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->y:I

    if-ne v0, v8, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->z:[I

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/k;->j:I

    aput v2, v1, v7

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->z:[I

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/k;->t:I

    iget v3, p0, Lcom/xiaomi/android/support/v7/widget/k;->j:I

    sub-int/2addr v2, v3

    aput v2, v1, v6

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/k;->z:[I

    aget v1, v2, v7

    int-to-float v1, v1

    aget v3, v2, v6

    int-to-float v3, v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->b:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v9

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/k;->c:F

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/k;->u:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v3

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/k;->u:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v4

    iget v5, p0, Lcom/xiaomi/android/support/v7/widget/k;->t:I

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/android/support/v7/widget/k;->a(FF[IIII)I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/k;->u:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v7, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->scrollBy(II)V

    :cond_9
    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/k;->c:F

    goto/16 :goto_0
.end method
