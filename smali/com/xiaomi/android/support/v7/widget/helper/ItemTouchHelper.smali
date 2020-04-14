.class public Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;
.super Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemDecoration;

# interfaces
.implements Lcom/xiaomi/android/support/v7/widget/RecyclerView$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;,
        Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;,
        Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;,
        Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$b;
    }
.end annotation


# instance fields
.field private final A:Lcom/xiaomi/android/support/v7/widget/RecyclerView$e;

.field private B:Landroid/graphics/Rect;

.field private C:J

.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

.field c:F

.field d:F

.field e:F

.field f:F

.field g:F

.field h:F

.field i:F

.field j:F

.field k:I

.field l:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;

.field m:I

.field n:I

.field o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;",
            ">;"
        }
    .end annotation
.end field

.field p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

.field final q:Ljava/lang/Runnable;

.field r:Landroid/view/VelocityTracker;

.field s:Landroid/view/View;

.field t:I

.field u:Landroid/support/v4/view/GestureDetectorCompat;

.field private final v:[F

.field private w:I

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private z:Lcom/xiaomi/android/support/v7/widget/RecyclerView$b;


# direct methods
.method public constructor <init>(Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->a:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->v:[F

    iput-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iput v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->k:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->m:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->o:Ljava/util/List;

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/helper/a;

    invoke-direct {v0, p0}, Lcom/xiaomi/android/support/v7/widget/helper/a;-><init>(Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;)V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->q:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->z:Lcom/xiaomi/android/support/v7/widget/RecyclerView$b;

    iput-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->s:Landroid/view/View;

    iput v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->t:I

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/helper/b;

    invoke-direct {v0, p0}, Lcom/xiaomi/android/support/v7/widget/helper/b;-><init>(Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;)V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->A:Lcom/xiaomi/android/support/v7/widget/RecyclerView$e;

    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->l:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;

    return-void
.end method

.method private a(I)I
    .locals 7

    const/16 v1, 0x8

    const/4 v2, 0x4

    const/4 v6, 0x0

    and-int/lit8 v0, p1, 0xc

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->g:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->r:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->k:I

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->r:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    iget v5, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->f:F

    invoke-static {v5}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->b(F)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->r:Landroid/view/VelocityTracker;

    iget v4, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->k:I

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->r:Landroid/view/VelocityTracker;

    iget v5, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->k:I

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    cmpl-float v5, v3, v6

    if-lez v5, :cond_1

    :goto_1
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    and-int v3, v1, p1

    if-eqz v3, :cond_2

    if-ne v0, v1, :cond_2

    iget v3, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->e:F

    invoke-static {v3}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->a(F)F

    move-result v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->f()F

    move-result v2

    mul-float/2addr v1, v2

    and-int v2, p1, v0

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->g:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v2, v1

    if-lez v1, :cond_3

    move v1, v0

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private a([F)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->n:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->i:F

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->g:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p1, v2

    :goto_0
    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->n:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->j:F

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->h:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p1, v3

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    aput v0, p1, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    aput v0, p1, v3

    goto :goto_1
.end method

.method private static a(Landroid/view/View;FFFF)Z
    .locals 1

    cmpl-float v0, p1, p3

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    cmpl-float v0, p2, p4

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p4

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(I)I
    .locals 7

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v6, 0x0

    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->h:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->r:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->k:I

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->r:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    iget v5, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->f:F

    invoke-static {v5}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->b(F)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->r:Landroid/view/VelocityTracker;

    iget v4, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->k:I

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->r:Landroid/view/VelocityTracker;

    iget v5, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->k:I

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    cmpl-float v5, v4, v6

    if-lez v5, :cond_1

    :goto_1
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    and-int v4, v1, p1

    if-eqz v4, :cond_2

    if-ne v1, v0, :cond_2

    iget v4, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->e:F

    invoke-static {v4}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->a(F)F

    move-result v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->f()F

    move-result v2

    mul-float/2addr v1, v2

    and-int v2, p1, v0

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->h:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v2, v1

    if-lez v1, :cond_3

    move v1, v0

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private b(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->i:F

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->g:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->j:F

    iget v5, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->h:F

    add-float/2addr v2, v5

    invoke-static {v0, v3, v4, v1, v2}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->a(Landroid/view/View;FFFF)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->o:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;->h:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    iget v5, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;->l:F

    iget v0, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;->m:F

    invoke-static {v1, v3, v4, v5, v0}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->a(Landroid/view/View;FFFF)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3, v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(FF)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Z)I
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;

    iget-object v2, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;->h:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v2, p1, :cond_1

    iget-boolean v2, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;->n:Z

    or-int/2addr v2, p2

    iput-boolean v2, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;->n:Z

    iget-boolean v2, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;->o:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;->b()V

    :cond_0
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->o:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget v0, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;->j:I

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final a(Landroid/view/MotionEvent;)Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->o:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;

    iget-object v4, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;->h:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    if-eq v4, v3, :cond_0

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Landroid/graphics/Canvas;Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V
    .locals 14

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->v:[F

    invoke-direct {p0, v0}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->a([F)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->v:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->v:[F

    const/4 v2, 0x1

    aget v0, v0, v2

    move v6, v0

    move v7, v1

    :goto_0
    iget-object v9, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v10, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->o:Ljava/util/List;

    iget v11, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->m:I

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    const/4 v0, 0x0

    move v8, v0

    :goto_1
    if-ge v8, v12, :cond_0

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v13

    iget-object v2, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;->h:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iget v3, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;->l:F

    iget v4, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;->m:F

    iget v5, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;->i:I

    move-object v0, p1

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->a(Landroid/graphics/Canvas;Lcom/xiaomi/android/support/v7/widget/RecyclerView;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;FFI)V

    invoke-virtual {p1, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    :cond_0
    if-eqz v9, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    move-object v0, p1

    move-object/from16 v1, p2

    move-object v2, v9

    move v3, v7

    move v4, v6

    move v5, v11

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->a(Landroid/graphics/Canvas;Lcom/xiaomi/android/support/v7/widget/RecyclerView;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;FFI)V

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    const/4 v1, 0x0

    add-int/lit8 v0, v12, -0x1

    move v2, v0

    :goto_2
    if-ltz v2, :cond_3

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;

    iget-boolean v3, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;->o:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;->k:Z

    if-nez v3, :cond_2

    invoke-interface {v10, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_3
    add-int/lit8 v2, v2, -0x1

    move v1, v0

    goto :goto_2

    :cond_2
    iget-boolean v0, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;->o:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->invalidate()V

    :cond_4
    return-void

    :cond_5
    move v0, v1

    goto :goto_3

    :cond_6
    move v6, v0

    move v7, v1

    goto :goto_0
.end method

.method public final a(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method final a(Landroid/view/MotionEvent;II)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->c:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->g:F

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->d:F

    sub-float v0, v1, v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->h:F

    and-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_0

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->g:F

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->g:F

    :cond_0
    and-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->g:F

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->g:F

    :cond_1
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->h:F

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->h:F

    :cond_2
    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_3

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->h:F

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->h:F

    :cond_3
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, v2}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Z)I

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->a:Ljava/util/List;

    iget-object v2, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->m:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->g()F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->i:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->g:F

    add-float/2addr v1, v2

    float-to-int v5, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->j:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->h:F

    add-float/2addr v1, v2

    float-to-int v6, v1

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v1, v6, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v1, v5, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->x:Ljava/util/List;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->x:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->y:Ljava/util/List;

    :goto_1
    invoke-static {}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->e()I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->i:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->g:F

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/lit8 v7, v1, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->j:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->h:F

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/lit8 v8, v1, 0x0

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v7

    add-int/lit8 v9, v1, 0x0

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v8

    add-int/lit8 v10, v1, 0x0

    add-int v1, v7, v9

    div-int/lit8 v11, v1, 0x2

    add-int v1, v8, v10

    div-int/lit8 v12, v1, 0x2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->b()Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->p()I

    move-result v14

    const/4 v1, 0x0

    move v4, v1

    :goto_2
    if-ge v4, v14, :cond_6

    invoke-virtual {v13, v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->f(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    if-eq v1, v2, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-lt v2, v8, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-gt v2, v10, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-lt v2, v7, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-gt v2, v9, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v15

    invoke-static {}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->b()Z

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v11, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v12, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/2addr v2, v2

    mul-int/2addr v1, v1

    add-int v16, v2, v1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v17

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    move/from16 v0, v17

    if-ge v2, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->y:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v0, v16

    if-le v0, v1, :cond_4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->x:Ljava/util/List;

    invoke-interface {v1, v3, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->y:Ljava/util/List;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_5
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    invoke-static {v0, v1, v5, v6}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-nez v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->e()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->e()I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->l:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    move-object/from16 v0, p1

    invoke-static {v3, v0, v1, v2}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto/16 :goto_0
.end method

.method final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 12

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->m:I

    if-ne p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->C:J

    iget v4, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->m:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Z)I

    iput p2, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->m:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    iget-object v0, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->s:Landroid/view/View;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->z:Lcom/xiaomi/android/support/v7/widget/RecyclerView$b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/helper/e;

    invoke-direct {v0, p0}, Lcom/xiaomi/android/support/v7/widget/helper/e;-><init>(Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;)V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->z:Lcom/xiaomi/android/support/v7/widget/RecyclerView$b;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->z:Lcom/xiaomi/android/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$b;)V

    :cond_2
    const/4 v0, 0x1

    mul-int/lit8 v1, p2, 0x8

    add-int/lit8 v1, v1, 0x8

    shl-int/2addr v0, v1

    add-int/lit8 v11, v0, -0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v1, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_e

    const/4 v0, 0x2

    if-eq v4, v0, :cond_a

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->m:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->l:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->a()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->b(II)I

    move-result v1

    const v3, 0xff00

    and-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_a

    const v3, 0xff00

    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x8

    iget v3, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->g:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->h:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_b

    invoke-direct {p0, v1}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->a(I)I

    move-result v9

    if-lez v9, :cond_9

    and-int/2addr v0, v9

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {v9, v0}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->a(II)I

    move-result v9

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->r:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->r:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->r:Landroid/view/VelocityTracker;

    :cond_4
    sparse-switch v9, :sswitch_data_0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2
    const/4 v0, 0x2

    if-ne v4, v0, :cond_c

    const/16 v3, 0x8

    :goto_3
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->v:[F

    invoke-direct {p0, v0}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->a([F)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->v:[F

    const/4 v1, 0x0

    aget v5, v0, v1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->v:[F

    const/4 v1, 0x1

    aget v6, v0, v1

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/helper/c;

    move-object v1, p0

    move-object v10, v2

    invoke-direct/range {v0 .. v10}, Lcom/xiaomi/android/support/v7/widget/helper/c;-><init>(Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;IIFFFFILcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-static {v1, v3}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;->a(J)V

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;->a()V

    const/4 v0, 0x1

    :goto_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    :cond_5
    move v1, v0

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->l:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;)I

    move-result v0

    and-int/2addr v0, v11

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->m:I

    mul-int/lit8 v2, v2, 0x8

    shr-int/2addr v0, v2

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->n:I

    iget-object v0, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->i:F

    iget-object v0, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->j:F

    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_5
    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_7
    if-nez v1, :cond_8

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->b()Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->z()V

    :cond_8
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-static {v0}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->invalidate()V

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0, v1}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b(I)I

    move-result v9

    if-gtz v9, :cond_3

    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_b
    invoke-direct {p0, v1}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b(I)I

    move-result v9

    if-gtz v9, :cond_3

    invoke-direct {p0, v1}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->a(I)I

    move-result v9

    if-lez v9, :cond_a

    and-int/2addr v0, v9

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {v9, v0}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->a(II)I

    move-result v9

    goto/16 :goto_1

    :sswitch_0
    const/4 v8, 0x0

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->g:F

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v7, v0, v1

    goto/16 :goto_2

    :sswitch_1
    const/4 v7, 0x0

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->h:F

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v8, v0, v1

    goto/16 :goto_2

    :cond_c
    if-lez v9, :cond_d

    const/4 v3, 0x2

    goto/16 :goto_3

    :cond_d
    const/4 v3, 0x4

    goto/16 :goto_3

    :cond_e
    iget-object v1, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b(Landroid/view/View;)V

    invoke-static {v2}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    goto/16 :goto_4

    :cond_f
    const/4 v0, 0x0

    goto :goto_5

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
        0x10 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method final a()Z
    .locals 14

    const-wide/high16 v12, -0x8000000000000000L

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v0, :cond_0

    iput-wide v12, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->C:J

    :goto_0
    return v6

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->C:J

    cmp-long v0, v0, v12

    if-nez v0, :cond_6

    const-wide/16 v4, 0x0

    :goto_1
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->b()Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->B:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->B:Landroid/graphics/Rect;

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->B:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->i()Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->i:F

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->g:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->B:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v2, v1, v2

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int v3, v2, v3

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->g:F

    cmpg-float v2, v2, v8

    if-gez v2, :cond_7

    if-gez v3, :cond_7

    :cond_2
    :goto_2
    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->j()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->j:F

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->h:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->B:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v0, v1

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int v7, v1, v2

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->h:F

    cmpg-float v1, v1, v8

    if-gez v1, :cond_9

    if-gez v7, :cond_9

    :cond_3
    :goto_3
    if-eqz v3, :cond_d

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->l:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v8, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getWidth()I

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;IIJ)I

    move-result v3

    move v8, v3

    :goto_4
    if-eqz v7, :cond_c

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->l:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getHeight()I

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;IIJ)I

    move-result v0

    :goto_5
    if-nez v8, :cond_4

    if-eqz v0, :cond_b

    :cond_4
    iget-wide v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->C:J

    cmp-long v1, v2, v12

    if-nez v1, :cond_5

    iput-wide v10, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->C:J

    :cond_5
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v8, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->scrollBy(II)V

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_6
    iget-wide v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->C:J

    sub-long v4, v10, v0

    goto/16 :goto_1

    :cond_7
    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->g:F

    cmpl-float v2, v2, v8

    if-lez v2, :cond_8

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->B:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v3, v1, v2

    if-gtz v3, :cond_2

    :cond_8
    move v3, v6

    goto/16 :goto_2

    :cond_9
    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->h:F

    cmpl-float v1, v1, v8

    if-lez v1, :cond_a

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->B:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int v7, v0, v1

    if-gtz v7, :cond_3

    :cond_a
    move v7, v6

    goto/16 :goto_3

    :cond_b
    iput-wide v12, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->C:J

    goto/16 :goto_0

    :cond_c
    move v0, v7

    goto :goto_5

    :cond_d
    move v8, v3

    goto/16 :goto_4
.end method

.method final a(ILandroid/view/MotionEvent;I)Z
    .locals 10

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v3, :cond_0

    if-ne p1, v4, :cond_0

    iget v3, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->m:I

    if-eq v3, v4, :cond_0

    invoke-static {}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->d()Z

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->c()I

    move-result v3

    if-ne v3, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->b()Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v3

    iget v4, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->k:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6

    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->l:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v4}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;)I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_0

    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget v6, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->c:F

    sub-float/2addr v4, v6

    iget v6, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->d:F

    sub-float/2addr v5, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->w:I

    int-to-float v8, v8

    cmpg-float v8, v6, v8

    if-gez v8, :cond_3

    iget v8, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->w:I

    int-to-float v8, v8

    cmpg-float v8, v7, v8

    if-ltz v8, :cond_0

    :cond_3
    cmpl-float v6, v6, v7

    if-lez v6, :cond_a

    cmpg-float v5, v4, v9

    if-gez v5, :cond_4

    and-int/lit8 v5, v3, 0x4

    if-eqz v5, :cond_0

    :cond_4
    cmpl-float v4, v4, v9

    if-lez v4, :cond_5

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_0

    :cond_5
    iput v9, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->h:F

    iput v9, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->g:F

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->k:I

    invoke-virtual {p0, v2, v1}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;I)V

    move v0, v1

    goto :goto_0

    :cond_6
    iget v4, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->k:I

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iget v6, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->c:F

    sub-float/2addr v5, v6

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget v6, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->d:F

    sub-float/2addr v4, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v6, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->w:I

    int-to-float v6, v6

    cmpg-float v6, v5, v6

    if-gez v6, :cond_7

    iget v6, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->w:I

    int-to-float v6, v6

    cmpg-float v6, v4, v6

    if-ltz v6, :cond_2

    :cond_7
    cmpl-float v6, v5, v4

    if-lez v6, :cond_8

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->i()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_8
    cmpl-float v4, v4, v5

    if-lez v4, :cond_9

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->j()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_9
    invoke-direct {p0, p2}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    goto/16 :goto_1

    :cond_a
    cmpg-float v4, v5, v9

    if-gez v4, :cond_b

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_0

    :cond_b
    cmpl-float v4, v5, v9

    if-lez v4, :cond_5

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_5

    goto/16 :goto_0
.end method

.method public final b(Landroid/graphics/Canvas;Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V
    .locals 16

    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->t:I

    const/4 v2, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->v:[F

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->a([F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->v:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->v:[F

    const/4 v3, 0x1

    aget v1, v1, v3

    move v8, v1

    move v9, v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->o:Ljava/util/List;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->m:I

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    const/4 v1, 0x0

    move v10, v1

    :goto_1
    if-ge v10, v14, :cond_0

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;->c()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v15

    iget-object v3, v1, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;->h:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iget v4, v1, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;->l:F

    iget v5, v1, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;->m:F

    iget v6, v1, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;->i:I

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v7}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->a(Landroid/graphics/Canvas;Lcom/xiaomi/android/support/v7/widget/RecyclerView;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/graphics/Canvas;->restoreToCount(I)V

    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_1

    :cond_0
    if-eqz v11, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    const/4 v7, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v11

    move v4, v9

    move v5, v8

    move v6, v13

    invoke-static/range {v1 .. v7}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->a(Landroid/graphics/Canvas;Lcom/xiaomi/android/support/v7/widget/RecyclerView;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    return-void

    :cond_2
    move v8, v1

    move v9, v2

    goto :goto_0
.end method

.method final b(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->s:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iput-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->s:Landroid/view/View;

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->z:Lcom/xiaomi/android/support/v7/widget/RecyclerView$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$b;)V

    :cond_0
    return-void
.end method
